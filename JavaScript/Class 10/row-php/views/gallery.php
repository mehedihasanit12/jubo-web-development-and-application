<?php include "includes/header.php"; ?>

    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <div class="card">


                        <div class="card-header">
                            Series Program
                        </div>


                        <div class="card-body">

                            <form action="web.php" method="POST">
                                <div class="row mb-3">
                                    <label class="col-md-3 fw-bold">Starting Number</label>
                                    <div class="col-md-9">
                                        <input type="number" class="form-control" name="starting_number"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3 fw-bold">Ending Number</label>
                                    <div class="col-md-9">
                                        <input type="number" class="form-control" name="ending_number"/>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3 fw-bold">Result</label>
                                    <div class="col-md-9">
                                        <textarea class="form-control"><?php echo isset($_GET['result']) ? $_GET['result'] : ''; ?></textarea>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-3 fw-bold"></label>
                                    <div class="col-md-9">
                                        <input type="submit" class="btn btn-success" name="series_btn" value="Make Series"/>
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