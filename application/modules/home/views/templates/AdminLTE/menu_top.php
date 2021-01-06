<?php if (!empty($home['menu_top'])): ?>
  <ul class="nav navbar-nav">
    <?php foreach ($home['menu_top'] as $key => $value): ?>
      <?php if (!empty($value['child'])): ?>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $value['title'] ?> <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <?php foreach ($value['child'] as $ckey => $cvalue): ?>
              <li><a href="<?php echo menu_link($cvalue['link']) ?>"><?php echo $cvalue['title'] ?></a></li>
            <?php endforeach ?>
          </ul>
        </li>
      <?php else: ?>
        <li><a href="<?php echo menu_link($value['link']) ?>"><?php echo $value['title'] ?></a></li>
      <?php endif ?>
    <?php endforeach ?>
  </ul>
<?php endif ?>
<ul class="nav navbar-nav">
  <li class="dropdown"><a href="<?php echo base_url('/profile.html');?>">Profile</a></li>
  <li class="dropdown"><a href="<?php echo base_url('/berita.html');?>">Berita</a></li>
  <li class="dropdown"><a href="<?php echo base_url('/gallery.html');?>">Gallery</a></li>
  <?php if (role_is('jemaat')): ?>
      <li class="dropdown"><a href="<?php echo base_url('/warta-jemaat.html');?>">Warta Jemaat</a></li>
      <li class="dropdown"><a href="<?php echo base_url('/category/pengumuman.html');?>">Pengumuman</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pendaftaran <span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
          <li><a href="<?php echo base_url('/home/daftar/akta_nikah');?>">Akta Nikah</a></li>
          <li><a href="<?php echo base_url('home/daftar/baptis');?>">Baptis</a></li>
        </ul>
      </li>
      <li class="dropdown"><a href="<?php echo base_url('/home/jadwal');?>">Jadwal</a></li>
  <?php endif ?>
</ul>