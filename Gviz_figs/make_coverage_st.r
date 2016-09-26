library(Gviz)
options(ucscChromosomeNames=FALSE)
alTrack <- AlignmentsTrack("SRR493366Aligned.sortedByCoord.out.bam",isPaired=T,size=0.01,background.title ="#042E8A",col="#042E8A",fill="#042E8A",fontsize=16,showTitle=FALSE)
grtrack <- GeneRegionTrack("/group/bioi1/shared/projects/superTranscript/reference_generation/human_super_reference.overlap_removed.gtf",chromsome="ENSG00000067955",name="Transcripts",transcriptAnnotation="transcript",size=0.5,background.title ="#619CFF",fill="#619CFF",col="black",fontsize=20)
gtrack <- GenomeAxisTrack()
pdf('coverage_st.pdf',width=15,height=6)
plotTracks(list(gtrack,alTrack,grtrack),from=-500,to=4200,chromosome="ENSG00000067955",type=c("coverage"))
dev.off()