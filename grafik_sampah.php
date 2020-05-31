<?php $page = 'grafik_sampah';
include 'include/header.php'; ?>
<script type="text/javascript" src="chartjs/Chart.js"></script>
  <style type="text/css">
    body {
      font-family: roboto;
    }

    table {
      margin: 0px auto;
    }
  </style>

<br><br>
  <center>
    <h2>Grafik sampah masyarakat<br /></h2>
  </center>


  <?php
  include 'db_connect.php';
  ?>

  <div style="width: 800px;margin: 0px auto;">
    <canvas id="myChart"></canvas>
  </div>

  <br />
  <br />

  <table border="1">
    <thead>
      <tr>
        <th>No</th>
        <th>NamaSampah</th>
        <th>Asal</th>
        <th>Jenis</th>
        <th>Daerah</th>
      </tr>
    </thead>
    <tbody>
      <?php
      $no = 1;
      $data = mysqli_query($db, "select * from sampah");
      while ($d = mysqli_fetch_array($data)) {
      ?>
        <tr>
          <td><?php echo $no++; ?></td>
          <td><?php echo $d['namasampah']; ?></td>
          <td><?php echo $d['asal']; ?></td>
          <td align="center" bgcolor="pink"><?php echo $d['jenis']; ?></td>
          <td><?php echo $d['daerah']; ?></td>
        </tr>
      <?php
      }
      ?>
    </tbody>
  </table>


  <script>
    var ctx = document.getElementById("myChart").getContext('2d');
    var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: ["Organik", "Nonorganik"],
        datasets: [{
          label: '',
          data: [
            <?php
            $jumlah_organik = mysqli_query($db, "select * from sampah where jenis='organik'");
            echo mysqli_num_rows($jumlah_organik);
            ?>,
            <?php
            $jumlah_nonorganik = mysqli_query($db, "select * from sampah where jenis='nonorganik'");
            echo mysqli_num_rows($jumlah_nonorganik);
            ?>
          ],
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)'
          ],
          borderColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)'
          ],
          borderWidth: 1

        }]
      },
      options: {
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: true
            }
          }]
        }
      }
    });
  </script>
</body>

</html>