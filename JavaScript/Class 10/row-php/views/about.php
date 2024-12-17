<?php include "includes/header.php"; ?>

<section class="py-5 bg-primary-subtle">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-header">
                        My Calculator
                    </div>
                    <div class="card-body">
                        <form action="web.php" method="POST">
                            <div class="row mb-3">
                                <label class="col-md-3 fw-bold">First Number</label>
                                <div class="col-md-9">
                                    <input type="number" class="form-control" name="first_number"/>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-md-3 fw-bold">Second Number</label>
                                <div class="col-md-9">
                                    <input type="number" class="form-control" name="second_number"/>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-md-3 fw-bold">Your Choice</label>
                                <div class="col-md-9">
                                    <label><input type="radio" value="+" name="choice"/> + </label>
                                    <label><input type="radio" value="-" name="choice"/> - </label>
                                    <label><input type="radio" value="*" name="choice"/> * </label>
                                    <label><input type="radio" value="/" name="choice"/> / </label>
                                    <label><input type="radio" value="%" name="choice"/> % </label>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-md-3 fw-bold">Result</label>
                                <div class="col-md-9">
                                    <input type="text" value="<?php echo isset($_GET['result']) ? $_GET['result'] : ''; ?>" class="form-control"/>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-md-3 fw-bold"></label>
                                <div class="col-md-9">
                                    <input type="submit" class="btn btn-success" value="Make Result" name="calculator_btn"/>
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