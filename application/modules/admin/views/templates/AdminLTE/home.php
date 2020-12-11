<?php defined('BASEPATH') OR exit('No direct script access allowed');
echo '<div class="row">';
if(!empty($home))
{
	foreach ($home as $key => $value) 
	{
		?>
		<div class="col-md-3">
			<div class="small-box" style="background:  <?php echo $value['color'] ?>; color:white;">
			  <div class="inner">
			    <h3><?php echo $value['total'] ?></h3>

			    <p><?php echo str_replace('_',' ',$key) ?></p>
			  </div>
			  <div class="icon">
			    <i class="<?php echo $value['icon'] ?>"></i>
			  </div>
			  <a href="<?php echo @$value['link'] ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
		<?php
	}
}
echo '</div>';
if(is_root())
{
	// pr(ip_detail(ip()));
}
?>
<div class="row">
	<h1 style="text-align: center;font-weight: bold;">SISTEM INFORMASI PELAYANAN JEMAAT GITJ PATI BERBASIS WEB</h1>
	<div class="container">
		<img src="<?php echo image_module('config/logo',$site['logo']['image']);?>" alt="" class="img img-responsive" style="width: 100%;">
		<div class="panel-body">
			<h2><?= $site['contact']['name'] ?></h2>
			<p><?= $site['contact']['description'] ?></p>
			<table>
				<tr>
					<td>email</td>
					<td>: <?= $site['contact']['email'] ?> </td>
				</tr>
				<tr>
					<td>phone</td>
					<td>: <?= $site['contact']['phone'] ?> </td>
				</tr>
			</table>
		</div>
	</div>
</div>