require(lpSolve)
f.obj <- c(2, 3, 3)
f.con <- matrix (c(1, 2, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1), nrow=5, byrow=TRUE)
f.dir <- c("=", ">=", ">=", ">=", ">=")
f.rhs <- c(3, 3, 0, 0, 0)
lpSolve::lp(direction = "min",objective.in = f.obj,const.mat = f.con,const.dir = f.dir,const.rhs = f.rhs)