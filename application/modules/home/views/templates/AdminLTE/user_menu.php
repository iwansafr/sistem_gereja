<div class="navbar-custom-menu">
  <ul class="nav navbar-nav">
    <?php if (!empty($_SESSION[base_url('_logged_in')])): ?>
      <li class="dropdown user user-menu">
        <?php
        $user = $_SESSION[base_url('_logged_in')];
        $image = image_module('user',$user['id'].'/'.$user['image']);
        ?>
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          <!-- The user image in the navbar-->
          <img src="<?php echo $image ?>" class="user-image" alt="User Image">
          <!-- hidden-xs hides the username on small devices so only the image appears. -->
          <span class="hidden-xs"><?php echo $_SESSION[base_url('_logged_in')]['username'] ?></span>
        </a>
        <ul class="dropdown-menu">
          <!-- The user image in the menu -->
          <li class="user-header" style="background-color: #c24715;">
            <img src="<?php echo $image ?>" class="img-circle" alt="User Image">

            <p>
              <?php echo $user['username'] ?>
              <small>Member sejak <?php echo date_format(date_create($user['created']),'d-m-Y') ?></small>
            </p>
          </li>
          <!-- Menu Body -->
          <li class="user-body">
            <div class="row">
              <div class="col-xs-4 text-center">
                <!-- <a href="#" class="btn btn-sm btn-default">Program</a> -->
              </div>
              <div class="col-xs-4 text-center">
                <!-- <a href="#" class="btn btn-sm btn-default">Tagihan</a> -->
              </div>
              <div class="col-xs-4 text-center">
                <!-- <a href="<?php echo base_url('home/member/daftar') ?>" class="btn btn-sm btn-default"><i class="fa fa-user"></i> Biodata</a> -->
              </div>
            </div>
            <!-- /.row -->
          </li>
          <!-- Menu Footer-->
          <li class="user-footer">
            <div class="pull-left">
              <a href="<?php echo base_url('home/member/daftar') ?>" class="btn btn-sm btn-default"><i class="fa fa-user"></i> Biodata</a>
            </div>
            <div class="pull-right">
              <a href="<?php echo base_url('admin/logout') ?>" class="btn btn-default btn-flat">Log out</a>
            </div>
          </li>
        </ul>
      </li>
    <?php else: ?>
      <li class="dropdown messages-menu">
        <!-- Menu toggle button -->
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          <i class="fa fa-user"></i>
        </a>
        <ul class="dropdown-menu">
          <li class="header"></li>
          <li>
            <ul class="menu">
              <li>
                <a href="<?php echo base_url('home/member/daftar')?>">
                  <div class="pull-left">
                    <i class="fa fa-plus-circle"></i>                    
                  </div>
                  <h4>
                    Daftar
                  </h4>
                  <p>Buat Akun Baru</p>
                </a>
              </li>
              <li>
                <a href="<?php echo base_url('admin/login')?>">
                  <div class="pull-left">
                    <i class="fa fa-sign-in"></i>                    
                  </div>
                  <h4>
                    Login
                  </h4>
                  <p>Login dg Akun yg dimiliki</p>
                </a>
              </li>
            </ul>
            <!-- /.menu -->
          </li>
          <li class="footer"><a href="#"></a></li>
        </ul>
      </li>
    <?php endif ?>
  </ul>
</div>