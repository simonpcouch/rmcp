% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mcp-config.R
\name{mcp_config}
\alias{mcp_config}
\title{Generate Model Context Protocol (MCP) configuration}
\usage{
mcp_config(which = c("Claude Code", "Claude Desktop"))
}
\arguments{
\item{which}{The name of the application to configure with rmcp. Currently,
one of "Claude Code" or "Claude Desktop".}
}
\value{
A character vector containing the MCP configuration
instructions, invisibly. The function also prints the configuration to
the console.
}
\description{
This function provides instructions to configure rmcp with LLM-enabled
tools like Claude Code or Claude Desktop.
}
\examples{
mcp_config("Claude Code")

# Claude Desktop currently isn't available on Linux
if (!identical(tolower(Sys.info()[["sysname"]]), "linux")) {
  mcp_config("Claude Desktop")
}

}
