<header class="header-one header-two header-three">
    <div class="header-top-two">
        <div class="container text-center">
            <div class="row">
                <div class="col-sm-12">
                    <div class="middel-top">
                        <div class="left floatleft">
                            <ul class="nav nav-pills">
                                <li><a href="#"><i class="mdi mdi-phone"></i> +84 948785332</a></li>
                                <li><a href="#"><i class="mdi mdi-email"></i> quoctrieu17082005@gmail.com</a></li>
                            </ul>
                        </div>
                        <div class="right floatright">
                            <ul class="nav navbar-nav">
                                <li><a href="#"><i class="mdi mdi-facebook"></i></a></li>
                                <li><a href="#"><i class="mdi mdi-twitter"></i></a></li>
                                <li><a href="#"><i class="mdi mdi-linkedin"></i></a></li>
                                <li><a href="#"><i class="mdi mdi-dribbble"></i></a></li>
                                <li><a href="#"><i class="mdi mdi-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container text-center">
        <div class="row">
            <!-- Logo -->
            <div class="col-sm-2">
                <div class="logo">
                    <h1 style="background: linear-gradient(90deg, #00bcd4, #004d40); border-radius:15px"><a href="?act=home" style="color:#fff; transition: color 0.3s ease;">BOOK <br> STORE</a></h1>
                </div>
            </div>
            <!-- Main Menu -->
            <div class="col-sm-8">
                <div class="header-middel">
                    <div class="mainmenu">
                        <nav>
                            <ul>
                                <li><a href="?act=home">Trang chủ</a></li>
                                <li><a href="?act=shop">Cửa Hàng</a>
                                    <ul class="magamenu">
                                        <li class="banner"></li>
                                        <?php
                                        $i = 1;
                                        foreach ($data_chitietDM as $row) { ?>
                                            <li>
                                                <a href="?act=shop&sp=<?= $i ?>">
                                                    <h5><?= $data_danhmuc[$i - 1]['TenDM'] ?></h5>
                                                </a>
                                                <ul>
                                                    <?php foreach ($row as $value) { ?>
                                                        <li><a href="?act=shop&sp=<?= $value['MaDM'] ?>&loai=<?= $value['TenLSP'] ?>"><?= $value['TenLSP'] ?></a></li>
                                                    <?php } ?>
                                                </ul>
                                            </li>
                                        <?php $i++;
                                        } ?>
                                        <li class="banner"></li>
                                    </ul>
                                </li>
                                <li><a href="?act=checkout">Thanh Toán</a></li>
                                <li><a href="?act=about">Giới thiệu</a></li>
                                <li><a href="?act=contact">Liên hệ</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- Mobile Menu -->
                    <div class="mobile-menu-area">
                        <div class="mobile-menu">
                            <nav id="dropdown">
                                <ul>
                                    <li><a href="?act=home">Trang chủ</a></li>
                                    <li><a href="?act=shop">Cửa hàng</a>
                                        <ul>
                                            <?php
                                            $i = 1;
                                            foreach ($data_chitietDM as $row) { ?>
                                                <li>
                                                    <a href="?act=shop&sp=<?= $i ?>">
                                                        <h5><?= $data_danhmuc[$i - 1]['TenDM'] ?></h5>
                                                    </a>
                                                    <ul>
                                                        <?php foreach ($row as $value) { ?>
                                                            <li><a href="?act=shop&sp=<?= $value['MaDM'] ?>&loai=<?= $value['TenLSP'] ?>"><?= $value['TenLSP'] ?></a></li>
                                                        <?php } ?>
                                                    </ul>
                                                </li>
                                            <?php $i++;
                                            } ?>
                                        </ul>
                                    </li>
                                    <li><a href="?act=checkout">Thanh Toán</a></li>
                                    <li><a href="?act=about">Giới thiệu</a></li>
                                    <li><a href="?act=contact">Liên hệ</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Cart and User Info -->
            <div class="col-sm-2">
                <div class="cart-itmes">
                    <a class="cart-itme-a" href="?act=cart">
                        <?php
                        $soluong = 0;
                        $thanhtien = 0;
                        if (isset($_SESSION['sanpham'])) {
                            foreach ($_SESSION['sanpham'] as $value) {
                                $soluong += $value['SoLuong'];
                                $thanhtien += $value['ThanhTien'];
                            }
                        }
                        ?>
                        <i class="mdi mdi-cart"></i>
                        <?= $soluong ?> SP: <strong><?= number_format($thanhtien) ?> VNĐ</strong>
                    </a>
                    <div class="cartdrop">
                        <?php if (isset($_SESSION['sanpham'])) {
                            foreach ($_SESSION['sanpham'] as $value) { ?>
                                <div class="sin-itme clearfix">
                                    <a href="?act=cart&xuli=deleteall&id=<?= $value['MaSP'] ?>"><i class="mdi mdi-close" title="Remove this product"></i></a>
                                    <a class="cart-img" href="?act=cart"><img src="public/<?= $value['HinhAnh1'] ?>" alt="" /></a>
                                    <div class="menu-cart-text">
                                        <a href="?act=detail&id=<?= $value['MaSP'] ?>">
                                            <h5><?= $value['TenSP'] ?></h5>
                                        </a>
                                        <b>Số lượng: <?= $value['SoLuong'] ?></b>
                                        <strong><?= number_format($value['ThanhTien']) ?> VNĐ</strong>
                                    </div>
                                </div>
                        <?php }
                        } ?>
                        <div class="total">
                            <span>Tổng <strong>= <?= number_format($thanhtien) ?> VNĐ</strong></span>
                        </div>
                        <a class="goto" href="?act=cart">Đến giỏ hàng</a>
                        <a class="out-menu" href="?act=checkout">Thanh toán</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- User Info -->
    <div class="container text-center">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <div class="middel-top clearfix">
                    <div class="widthfull">
                        <form action="?act=shop" method="post" style="display: flex; align-items: center; border: 1px solid #ddd; padding: 5px 15px; border-radius: 30px;">
                            <button type="submit" style="background-color: #f8f8f8; border: none; cursor: pointer; padding: 8px; border-radius: 50%; margin-right: 10px;">
                                <i class="mdi mdi-magnify"></i>
                            </button>
                            <input type="text" placeholder="Tìm kiếm..." name="keyword" style="border: none; outline: none; padding: 8px; width: 250px; border-radius: 30px; font-size: 16px;" />
                        </form>

                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="middel-top clearfix">
                    <ul class="clearfix right floatright">
                        <li>
                            <a><i class="mdi mdi-account mdi-36px"></i></a>
                            <ul>
                                <?php if (isset($_SESSION['login'])) { ?>
                                    <li><b>Chào <?= $_SESSION['login']['Ho'] ?> <?= $_SESSION['login']['Ten'] ?></b></li>
                                    <li><a href="?act=taikhoan&xuli=account">Tài khoản</a></li>
                                    <li><a href="?act=taikhoan&xuli=dangxuat">Đăng xuất</a></li>
                                    <?php if (isset($_SESSION['isLogin_Admin']) || isset($_SESSION['isLogin_Nhanvien'])) { ?>
                                        <li><a href="admin/?mod=login">Trang quản lý</a></li>
                                    <?php } ?>
                                <?php } else { ?>
                                    <li><b>Khách hàng</b></li>
                                    <li><a href="?act=taikhoan">Đăng nhập</a></li>
                                <?php } ?>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>

<style>
    .header-top-two {
        height: 50px;
        background-color: #ffffff;
    }

    .header-top-two .left .nav.nav-pills {
        display: flex;
        align-items: center;
        justify-content: flex-start;
        /* Căn trái nếu cần */
    }

    .header-top-two .left .nav.nav-pills li {
        list-style: none;
        margin-right: 15px;
        /* Khoảng cách giữa các icon */
    }

    .header-top-two .right .nav.navbar-nav {
        display: flex;
        align-items: center;
        justify-content: flex-end;
        /* Căn phải nếu cần */
    }

    .header-top-two .right .nav.navbar-nav li {
        margin-right: 15px;
        /* Khoảng cách giữa các icon */
    }

    .header-top-two .left a,
    .header-top-two .right a {
        color: #333;
        /* Màu sắc của icon */
        font-size: 15px;
        /* Kích thước icon */
    }

    /* Cải thiện giao diện khối tìm kiếm và thông tin tài khoản */
    .middel-top {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px;
        margin-bottom: 10px;
        border: none;
    }

    .widthfull {
        flex: 1;
        display: flex;
        justify-content: center;
    }

    /* form {
        display: flex;
        align-items: center;
        border: 1px solid #ddd;
        padding: 5px 15px;
        border-radius: 30px;
    }

    form button {
        background-color: #f8f8f8;
        border: none;
        cursor: pointer;
        padding: 8px;
        border-radius: 50%;
        margin-right: 10px;
    }

    form input[type="text"] {
        border: none;
        outline: none;
        padding: 8px;
        width: 250px;
        border-radius: 30px;
        font-size: 16px;
    }

    form button:hover {
        background-color: #ddd;
    } */

    .middel-top ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .middel-top .right {
        display: flex;
        align-items: center;
        justify-content: flex-end;
    }

    .middel-top .right .floatright {
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .middel-top .right li {
        margin-left: 20px;
        position: relative;
    }

    .middel-top .right li a {
        font-size: 16px;
        color: #333;
        display: inline-block;
        transition: color 0.3s ease;
        text-align: center;
    }

    .middel-top .right li a:hover {
        color: #007bff;
        /* Màu khi hover */
    }

    .middel-top .right ul li ul {
        display: none;
        position: absolute;
        top: 40px;
        right: 0;
        background-color: #fff;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        min-width: 180px;
        border-radius: 5px;
        padding: 10px;
    }

    .middel-top .right ul li:hover ul {
        display: block;
    }

    .middel-top .right ul li ul li {
        padding: 10px;
        font-size: 16px;
    }

    .middel-top .right ul li ul li a {
        color: #333;
        text-decoration: none;
        transition: background-color 0.3s ease;
    }

    .middel-top .right ul li ul li a:hover {
        background-color: #f1f1f1;
        padding: 5px;
    }

    /* Đảm bảo responsive */
    @media (max-width: 768px) {
        .middel-top {
            flex-direction: column;
        }

        .widthfull {
            width: 100%;
            margin-bottom: 10px;
        }

        .middel-top .right {
            margin-top: 10px;
        }

        .middel-top .right .floatright {
            justify-content: flex-start;
        }
    }
</style>