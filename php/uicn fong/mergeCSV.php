<?php
    $nn = 0;
    foreach (glob("*.csv") as $filename) {

        if (($handle = fopen($filename, "r")) !== FALSE) {

            while (($data = fgetcsv($handle, 0, ";")) !== FALSE) {
                $c = count($data);
                $csvarray[$nn][] = $filename;
                for ($x=0;$x<$c;$x++)
                {
                    $csvarray[$nn][] = $data[$x];
                }
                $nn++;
            }

            fclose($handle);
        }

    }

    $fp = fopen('../file.csv', 'w');//output file set here

    foreach ($csvarray as $fields) {
        fputcsv($fp, $fields);
    }

    fclose($fp);

?>