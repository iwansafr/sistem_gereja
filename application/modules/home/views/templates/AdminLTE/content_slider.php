<?php $header = $this->esg->get_config('header') ?>
<?php if (!empty($header)): ?>
  <div class="box-body">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <div class="item active">
          <img src="<?php echo image_module('config/header',$header['image']);?>" alt="First slide" style="width: 100%;">
          <div class="carousel-caption">
            <?php echo $header['title'] ?>
          </div>
        </div>
      </div>
    </div>
  </div>    	
<?php endif ?>