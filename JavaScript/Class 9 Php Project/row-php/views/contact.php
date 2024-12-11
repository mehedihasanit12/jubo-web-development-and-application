<?php include "includes/header.php"; ?>

    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <div class="card">
                        <div class="card-header">
                            Full Name Program
                        </div>
                        <div class="card-body">
                            <form action="web.php" method="post">
                                <div class="row mb-3">
                                    <label class="col-md-3 fw-bold">First Name</label>

                                    <div class="col-md-9">
                                        <input type="text" name="first_name" class="form-control"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3 fw-bold">Last Name</label>

                                    <div class="col-md-9">
                                        <input type="text" name="last_name" class="form-control"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3 fw-bold">Full Name</label>

                                    <div class="col-md-9">
                                        <input type="text" class="form-control" value="<?php echo isset($_GET['result']) ? $_GET['result'] : ''; ?>"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3 fw-bold"></label>

                                    <div class="col-md-9">
                                        <input type="submit" name="full_name_btn" class="btn btn-success" value="Make Full Name"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<?php include "includes/footer.php"; ?>