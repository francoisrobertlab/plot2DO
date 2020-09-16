# Read Rdata files.
library('optparse')
option_list = list(
  make_option(c('-p', '--position'), type='integer', default=-1000,
              help='first position label', metavar='number'),
  make_option(c('-f', '--fragment'), type='integer', default=50,
              help='first fragment length label', metavar='number')
);
opt_parser = OptionParser(option_list=option_list);
arguments = parse_args(opt_parser, positional_arguments = TRUE);
opt = arguments$options

for (rdata in arguments$args) {
  load(file=rdata)
  colnames(occMatrix) = seq(opt$position, opt$position+ncol(occMatrix)-1)
  rownames(occMatrix) = seq(opt$fragment, opt$fragment+nrow(occMatrix)-1)
  output = paste(tools::file_path_sans_ext(rdata), '.txt', sep='')
  write.table(occMatrix, file=output, sep='\t', col.names=NA)
}
