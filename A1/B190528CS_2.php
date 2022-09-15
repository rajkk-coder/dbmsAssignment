<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
        <h1 align="center">Student Details</h1><br>
        <!-- <h3 align="center">Student data</h3> -->
		<div class="col-md-8" style="margin:0 auto; float:none;">
        <?php
		$table="table";
		$row="row";
		$col="col";
        echo "<table class=$table>\n\n<thead>\n<tr>\n<th scope=$col>#</th>\n<th scope=$col>First Name</th>\n<th scope=$col>Last Name</th>\n<th scope=$col>Roll Number</th>\n<th scope=$col>Email</th>\n<tr>\n";
        // Open a file
		$count=1;
        $file = fopen("student.csv", "r");
        // Fetching data from csv file row by row
		echo "<tbody>";
        while (($data = fgetcsv($file)) !== false) {
  
            // HTML tag for placing in row format
            echo "<tr>";
			echo "<th scope=$row>$count</th>";
            foreach ($data as $i) {
                echo "<td>" . htmlspecialchars($i) 
                    . "</td>";
            }
            echo "</tr> \n";
			$count+=1;
        }
		echo "\n</tbody>";
        // Closing the file
        fclose($file);
  
        echo "\n</table>";
        ?>
	</div>
</div>
</body>

</html>

