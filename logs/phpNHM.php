
<?php
$file = fopen("iplogC.txt","r");
            if(count >= 30);
            while(! feof($file))
            {
                echo "<tr>";
                $line = fgets($file);
                $cols = explode('|', trim($line, '|'));
                $deleted_item = array_pop($cols);                   
                foreach($cols as $col)
                    echo "<td>$col</td>";
                echo "</tr>";
            }

            fclose($file);
        ?>
