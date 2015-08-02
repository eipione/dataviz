munge <- function(w){
    cols <- c("X64N.90N","X44N.64N","X24N.44N","EQU.24N" , 
              "X90S.64S","X64S.44S","X44S.24S","X24S.EQU")
    m <- matrix(nrow = 0,ncol = 3)
    n <- names(w)
    for(i in 2:ncol(w)){
        if (n[i] %in% cols){
            c <- cbind(w$Year,n[i],w[,i]) 
            m <- rbind(m,c)  
        }
       
    }
    d <- as.data.frame(m,stringsAsFactors = FALSE)
    names(d) <- c("Year","Region","Temperature")
    write.csv(d,"w.csv")
    d
}