#' test documentation for extract.probe.regions
#' @export
extract.probe.regions <- function(CpG_info) {
  # Check input
  column_names <- colnames(CpG_info)
  if (column_names[1] != "CpG_id") {
    stop("First column must be \"CpG_id\"")
  }
  if (column_names[2] != "chr") {
    stop("Second column must be \"chr\"")
  }
  if (column_names[3] != "CpG_pos") {
    stop("Third column must be \"CpG_pos\"")
  }
  if (column_names[4] != "strand") {
    stop("Fourth column must be \"strand\"")
  }
  if (column_names[5] != "type") {
    stop("Fifth column must be \"type\"")
  }

  # Recode chromosome information, if necessary
  if (length(grep("chr", CpG_info$chr, ignore.case=TRUE)) > 0) {
    CpG_info$chr <- gsub("chr", "", CpG_info$chr, ignore.case=T)
  }
  # Recode probe type information, if necessary
  if (length(grep("I", CpG_info$type)) > 0) {
    CpG_info$type[CpG_info$type=="I"] <- 1
    CpG_info$type[CpG_info$type=="II"] <- 2
  }
  # Recode strand information, if necessary
  if (length(grep("F", CpG_info$strand)) > 0) {
    CpG_info$strand[CpG_info$strand=="F"] <- '+'
  }
  if (length(grep("R", CpG_info$strand)) > 0) {
    CpG_info$strand[CpG_info$strand=="R"] <- '-'
  }
  # Remove rows with no position information, if necessary
  if (length(which(is.na(CpG_info$CpG_pos))) > 0) {
    manifest_anno_object <- CpG_info[-which(is.na(CpG_info$CpG_pos)),]
  }

  # Add probe coordinates
  bed_file <- manifest_anno_object
  bed_file[,c("start", "end")] <- t(apply(X=manifest_anno_object, MARGIN=1, FUN=calc.probe.coords))
  bed_file <- bed_file[,c("chr","start","end","CpG_id","strand","type","CpG_pos")]
  if (ncol(manifest_anno_object) > 5) {
    meta_cols <- as.data.frame(manifest_anno_object[,6:ncol(manifest_anno_object)])
    colnames(meta_cols) <- colnames(manifest_anno_object)[6:ncol(manifest_anno_object)]
    bed_file <- cbind(bed_file, meta_cols)
  }
  return(bed_file)
}
