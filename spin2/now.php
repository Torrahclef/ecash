<?php
$user_name = $_POST['username'];

function getConnection()
{

        $servername = "localhost";
        $username = "earnccge_userx";
        $password = "E4(}TJw++c*U";
        $dbname = "earnccge_supreme";
        $conn = null;
    try {
        $conn = new PDO("mysql:host=$servername;dbname=" . $dbname, $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        $error = "Connection failed: " . $e->getMessage();
        die($error);
    }
    return $conn;
}

function getUserBalance($user_name)
{
    $balance = null;
    $conn = getConnection();
    try {

        $sql = $conn->prepare("SELECT * FROM affiliateuser WHERE username = ?");
        $sql->execute([$user_name]);
        if ($sql->rowCount() > 0) {
            $row = $sql->fetch(PDO::FETCH_ASSOC);
            $balance = $row['tamount'];
        }
    } catch (PDOException $e) {
        $error = "Connection failed: " . $e->getMessage();
        die($error);
    }
    return $balance;
}

function getUserId($uname)
{
    $data = null;
    $conn = getConnection();
    try {

        $sql = $conn->prepare("SELECT * FROM affiliateuser WHERE username = ?");
        $sql->execute([$uname]);
        if ($sql->rowCount() > 0) {
            $row = $sql->fetch(PDO::FETCH_ASSOC);
            $data = $row['Id'];
        }
    } catch (PDOException $e) {
        $error = "Connection failed: " . $e->getMessage();
        die($error);
    }
    return $data;
}


function getWelcomeSpin($uname)
{
    $data = null;
    $conn = getConnection();
    try {

        $sql = $conn->prepare("SELECT * FROM affiliateuser WHERE username = ?");
        $sql->execute([$uname]);
        if ($sql->rowCount() > 0) {
            $row = $sql->fetch(PDO::FETCH_ASSOC);
            $data = $row['welcome_spin'];
        }
    } catch (PDOException $e) {
        $error = "Connection failed: " . $e->getMessage();
        die($error);
    }
    return $data;
}

function getLastSpin($uname)
{
    $data = null;
    $conn = getConnection();
    try {

        $sql = $conn->prepare("SELECT * FROM affiliateuser WHERE username = ?");
        $sql->execute([$uname]);
        if ($sql->rowCount() > 0) {
            $row = $sql->fetch(PDO::FETCH_ASSOC);
            $data = $row['last_spin_at'];
        }
    } catch (PDOException $e) {
        $error = "Connection failed: " . $e->getMessage();
        die($error);
    }
    return $data;
}


function getSpinInstance($spin_amount)
{
    // Spin::where('name', $request->instance)->first();
    $data = null;
    $conn = getConnection();
    try {

        $sql = $conn->prepare("SELECT * FROM spingrids WHERE amount = ?");
        $sql->execute([$spin_amount]);
        if ($sql->rowCount() > 0) {
            $row = $sql->fetch(PDO::FETCH_ASSOC);
            $data = $row;
        }
    } catch (PDOException $e) {
        $error = "Connection failed: " . $e->getMessage();
        die($error);
    }
    return $data;
}


function incrementSpin($spinam)
{
    $conn = getConnection();
    $data = getSpinInstance($spinam);
    try {
        $newcount = $data['count'] + 1;
        $query = $conn->prepare("UPDATE spingrids SET count = ? WHERE id = ?");
        $query->execute([$newcount,  $data['id']]);
    } catch (PDOException $e) {
        $error = "Connection failed: " . $e->getMessage();
        die($error);
    }
}

$balance = getUserBalance($user_name);
$instance = $_POST['instance'];
$amount = $_POST['amount'];
$welcome_spin = getWelcomeSpin($user_name);



if ($instance != null && $instance == 'Normal') {
    if ($amount < 20) {
        echo json_encode(array("success" => false, "errors" => "Minimum Spin is Ksh.20"));
        return;
    }
if ($balance < $amount) {
        echo json_encode(array("success" => false, "errors" => "Sorry, You Cannot Spin Higher than Your  Balance!"));
        return;
    }
    $spin_amount = round($amount, -1);
    $spingrid = getSpinInstance($spin_amount);
    if ($spingrid === null) {
        $gain = round(($spin_amount / 2), -1);
        $loss = $gain;
        $conn = getConnection();
        try {
            $sql = "INSERT INTO spingrids (amount, loss, gain, count) VALUES(?, ?, ?, ?)";
            $query = $conn->prepare($sql);
            $query->execute([$spin_amount, $loss, $gain, '1']);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        $spingrid = getSpinInstance($spin_amount);
    }

    if (($spingrid['count']) % 3 == 0) {
        $conn = getConnection();
        $curr_instance = getSpinInstance($spin_amount);
        try {
            $sql = "INSERT INTO spinnings (user_id, spin_id, count, amount, status, winning, type) VALUES(?, ?, ?, ?, ?, ?, ?)";
            $query = $conn->prepare($sql);
            $query->execute([getUserId($user_name), $curr_instance['id'], $curr_instance['count'], $amount, '1', $curr_instance['gain'], 'Normal']);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }

        try {
            $new_balance = $balance + $curr_instance['gain'];
            $query = $conn->prepare("UPDATE affiliateuser SET tamount = ? WHERE username = ?");
            $query->execute([$new_balance,  $user_name]);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        // echo json_encode(array("success" => false, "errors" => "Sorry!" . getUserId($user_name)));
        // return;
        // $spingrid->increment('count');
        incrementSpin($spin_amount);
        $index = rand(1, 18);

        $angle = ($index * 20) - rand(0, 18);

        $value = 'Ksh ' .  intval($spingrid['gain'] + $amount);
        echo json_encode(array(
            'success' => true,
            'stepper' =>  $angle,
            'index' => $index,
            'value' => $value,            
            'balance'=>getUserBalance($_POST['username'])
        ));
        return;
    } else {

        $conn = getConnection();
        $curr_instance = getSpinInstance($spin_amount);

        try {
            $sql = "INSERT INTO spinnings (user_id, spin_id, count, amount, status, winning, type) VALUES(?, ?, ?, ?, ?, ?, ?)";
            $query = $conn->prepare($sql);
            $query->execute([getUserId($user_name), $curr_instance['id'], $curr_instance['count'], $amount, '2', $curr_instance['loss'], 'Normal']);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }




        try {
            $new_balance = $balance - $curr_instance['loss'];
            $query = $conn->prepare("UPDATE affiliateuser SET tamount = ? WHERE username = ?");
            $query->execute([$new_balance,  $user_name]);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        incrementSpin($spin_amount);
        $index = rand(1, 18);
        $angle = ($index * 20) - rand(0, 18);
        $value = 'Ksh ' .  intval($spingrid['loss']);
        echo json_encode(array(
            'success' => true,
            'stepper' =>  $angle,
            'index' => $index,
            'value' => $value,
            'balance'=>getUserBalance($_POST['username'])
        ));
        return;
    }
} elseif ($instance != null && $instance == 'Welcome') {
    if ($welcome_spin == 1) {
        echo json_encode(array("success" => false, "errors" => "You have already Used up your free welcome spin!"));
        return;
    }
    //Welcome Amount
    $amount = 30;
    $spin_amount = round($amount, -1);
    $spingrid = getSpinInstance($spin_amount);
    if ($spingrid === null) {
        $gain = round(($spin_amount / 2), -1);
        $loss = $gain;
        $conn = getConnection();
        try {
            $sql = "INSERT INTO spingrids (amount, loss, gain, count) VALUES(?, ?, ?, ?)";
            $query = $conn->prepare($sql);
            $query->execute([$spin_amount, $loss, $gain, '1']);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        $spingrid = getSpinInstance($spin_amount);
    }

    try {
        $conn = getConnection();
        $query = $conn->prepare("UPDATE affiliateuser SET welcome_spin = ? WHERE username = ?");
        $query->execute(['1',  $_POST['username']]);
    } catch (PDOException $e) {
        $error = "Connection failed: " . $e->getMessage();
        die($error);
    }

    if (($spingrid['count']) % 3 == 0) {
        $conn = getConnection();
        $curr_instance = getSpinInstance($spin_amount);
        try {
            $sql = "INSERT INTO spinnings (user_id, spin_id, count, amount, status, winning, type) VALUES(?, ?, ?, ?, ?, ?, ?)";
            $query = $conn->prepare($sql);
            $query->execute([getUserId($user_name), $curr_instance['id'], $curr_instance['count'], $amount, '1', $curr_instance['gain'], 'Normal']);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }

        try {
            $new_balance = $balance + $curr_instance['gain'];
            $query = $conn->prepare("UPDATE affiliateuser SET tamount = ? WHERE username = ?");
            $query->execute([$new_balance,  $user_name]);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        // echo json_encode(array("success" => false, "errors" => "Sorry!" . getUserId($user_name)));
        // return;
        // $spingrid->increment('count');
        incrementSpin($spin_amount);
        $index = rand(1, 18);

        $angle = ($index * 20) - rand(0, 18);

        $value = 'Ksh ' .  intval($spingrid['gain'] + $amount);
        echo json_encode(array(
            'success' => true,
            'stepper' =>  $angle,
            'index' => $index,
            'value' => $value,
        ));
        return;
    } else {
        $conn = getConnection();
        $curr_instance = getSpinInstance($spin_amount);
        try {
            $sql = "INSERT INTO spinnings (user_id, spin_id, count, amount, status, winning, type) VALUES(?, ?, ?, ?, ?, ?, ?)";
            $query = $conn->prepare($sql);
            $query->execute([getUserId($user_name), $curr_instance['id'], $curr_instance['count'], $amount, '2', $curr_instance['loss'], 'Normal']);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        try {
            $new_balance = $balance + $curr_instance['loss'];
            $query = $conn->prepare("UPDATE affiliateuser SET tamount = ? WHERE username = ?");
            $query->execute([$new_balance,  $user_name]);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        incrementSpin($spin_amount);
        $index = rand(1, 18);
        $angle = ($index * 20) - rand(0, 18);
        $value = 'Ksh ' .  intval($spingrid['loss']);
        echo json_encode(array(
            'success' => true,
            'stepper' =>  $angle,
            'index' => $index,
            'value' => $value,
        ));
        return;
    }
} elseif ($instance != null && $instance == 'Free') {



    // if (Carbon::parse($user->last_spin_at)->diffInSeconds(Carbon::now()) < 20) {
    //     return;
    // // }
    // $last_spin = new DateTime(getLastSpin($_POST['username']));
    // $date2 = new DateTime('now');

    // $diff = $last_spin->getTimestamp() - $date2->getTimestamp();
    if (true) {
        echo json_encode(array("success" => false, "errors" => " No Free Available at the Moment. Please check later!"));
        return;
    }

    // if ($instance->spin_limit < 20) {
    //     return response()->json(['errors' => 'Free Spin Limit Reached! Check try next time!'], 400);
    // } elseif (Carbon::now()->toDateTimeString() < $instance->spin_from) {
    //     return response()->json(['errors' => 'No more Free Spins. Check Later'], 400);
    // } elseif ($instance->spin_to < Carbon::now()->toDateTimeString()) {
    //     return response()->json(['errors' => 'No more Free Spins. Check Later'], 400);
    // } else {
    //     $user->update([
    //         'last_spin_at' => Carbon::now()->toDateTimeString()
    //     ]);

    //     try {
    //         $conn = getConnection();
    //         $query = $conn->prepare("UPDATE affiliateuser SET welcome_spin = ? WHERE username = ?");
    //         $query->execute(['1',  $_POST['username']]);
    //     } catch (PDOException $e) {
    //         $error = "Connection failed: " . $e->getMessage();
    //         die($error);
    //     }
    // }

    //Welcome Amount
    $amount = 30;
    $spin_amount = round($amount, -1);
    $spingrid = getSpinInstance($spin_amount);
    if ($spingrid === null) {
        $gain = round(($spin_amount / 2), -1);
        $loss = $gain;
        $conn = getConnection();
        try {
            $sql = "INSERT INTO spingrids (amount, loss, gain, count) VALUES(?, ?, ?, ?)";
            $query = $conn->prepare($sql);
            $query->execute([$spin_amount, $loss, $gain, '1']);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        $spingrid = getSpinInstance($spin_amount);
    }



    if (($spingrid['count']) % 3 == 0) {
        $conn = getConnection();
        $curr_instance = getSpinInstance($spin_amount);
        try {
            $sql = "INSERT INTO spinnings (user_id, spin_id, count, amount, status, winning, type) VALUES(?, ?, ?, ?, ?, ?, ?)";
            $query = $conn->prepare($sql);
            $query->execute([getUserId($user_name), $curr_instance['id'], $curr_instance['count'], $amount, '1', $curr_instance['gain'], 'Normal']);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }

        try {
            $new_balance = $balance + $curr_instance['gain'];
            $query = $conn->prepare("UPDATE affiliateuser SET tamount = ? WHERE username = ?");
            $query->execute([$new_balance,  $user_name]);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        // echo json_encode(array("success" => false, "errors" => "Sorry!" . getUserId($user_name)));
        // return;
        // $spingrid->increment('count');
        incrementSpin($spin_amount);
        $index = rand(1, 18);

        $angle = ($index * 20) - rand(0, 18);

        $value = 'Ksh ' .  intval($spingrid['gain'] + $amount);
        echo json_encode(array(
            'success' => true,
            'stepper' =>  $angle,
            'index' => $index,
            'value' => $value,
        ));
        return;
    } else {
        $conn = getConnection();
        $curr_instance = getSpinInstance($spin_amount);
        try {
            $sql = "INSERT INTO spinnings (user_id, spin_id, count, amount, status, winning, type) VALUES(?, ?, ?, ?, ?, ?, ?)";
            $query = $conn->prepare($sql);
            $query->execute([getUserId($user_name), $curr_instance['id'], $curr_instance['count'], $amount, '2', $curr_instance['loss'], 'Normal']);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        try {
            $new_balance = $balance + $curr_instance['loss'];
            $query = $conn->prepare("UPDATE affiliateuser SET tamount = ? WHERE username = ?");
            $query->execute([$new_balance,  $user_name]);
        } catch (PDOException $e) {
            $error = "Connection failed: " . $e->getMessage();
            die($error);
        }
        incrementSpin($spin_amount);
        $index = rand(1, 18);
        $angle = ($index * 20) - rand(0, 18);
        $value = 'Ksh ' .  intval($spingrid['loss']);
        echo json_encode(array(
            'success' => true,
            'stepper' =>  $angle,
            'index' => $index,
            'value' => $value,
        ));
        return;
    }
}
