
<?php include "includes/header.php"; ?>


    <!--    Carousel Start-->


    <div id="slider" class="carousel slide" data-bs-ride="carousel" data-bs-interval="1800">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="assets/img/slider 1.jfif" alt="" class="w-100 object-fit-cover" height="550"/>

                <div class="carousel-caption">
                    <h1>This is heading One</h1>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto, autem beatae dolores est et fuga illo impedit maxime numquam omnis quam saepe similique sint sit sunt, ullam ut veritatis voluptates!
                    </p>
                    <a href="" class="btn btn-success">Read More</a>
                </div>
            </div>

            <div class="carousel-item">
                <img src="assets/img/slider 2.png" alt="" class="w-100 object-fit-cover" height="550"/>

                <div class="carousel-caption">
                    <h1>This is heading One</h1>
                    <p>
                        lorem
                    </p>
                    <a href="" class="btn btn-success">Read More</a>
                </div>
            </div>

            <div class="carousel-item">
                <img src="assets/img/slider 3.jfif" alt="" class="w-100 object-fit-cover" height="550"/>

                <div class="carousel-caption">
                    <h1>This is heading One</h1>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem dolorum inventore labore magni suscipit voluptatem voluptatibus! A debitis delectus dolore fugit harum in minima nesciunt, praesentium sunt temporibus totam voluptate?
                    </p>
                    <a href="" class="btn btn-success">Read More</a>
                </div>
            </div>
        </div>

        <a href="#slider" class="carousel-control-prev" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>

        <a href="#slider" class="carousel-control-next" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>

    </div>



    <!--    Carousel End-->

    <!--    Card Section Start-->


    <section class="py-5 bg-info-subtle">
        <div class="container">
            <div class="row">
                <?php foreach ($blogs as $blog) { ?>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="<?php echo $blog['image']; ?>" alt="" height="270"/>
                        <div class="card-body">
                            <h4><?php echo $blog['title']; ?></h4>
                            <p><?php echo $blog['description_one']; ?></p>
                            <a href="web.php?page=detail&&id=<?php echo $blog['id']; ?>" class="btn btn-success">Read More</a>
                        </div>
                    </div>
                </div>

                <?php } ?>


<!--                <div class="col-md-4">-->
<!--                    <div class="card">-->
<!--                        <img src="assets/img/pic 2.jpg" alt=""/>-->
<!--                        <div class="card-body">-->
<!--                            <h4>This is heading content</h4>-->
<!--                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>-->
<!--                            <a href="" class="btn btn-success">Read More</a>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
<!---->
<!---->
<!--                <div class="col-md-4">-->
<!--                    <div class="card">-->
<!--                        <img src="assets/img/pic 2.jpg" alt=""/>-->
<!--                        <div class="card-body">-->
<!--                            <h4>This is heading content</h4>-->
<!--                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>-->
<!--                            <a href="" class="btn btn-success">Read More</a>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->



            </div>
        </div>
    </section>





    <!--    Card Section End-->

<?php include "includes/footer.php"; ?>

