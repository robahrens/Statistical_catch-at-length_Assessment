source("read.admb")
A=read.rep("scal.rep")
par(mfcol=c(9,3),mai=c(0,0,0,0),omi=c(0,0,0,0))
lengths=seq(2.5,200,by=5)
ylim=range(rbind(A$plt,A$plhat))*c(0,1.05)
for(i in 1:27)
{
	
	plot(lengths,A$plt[i,],ylim=ylim,type="p",pch=16,lwd=2,col="blue")
	points(lengths,A$plhat[i,],ylim=ylim,type="h",lwd=2,col="orange")
}
