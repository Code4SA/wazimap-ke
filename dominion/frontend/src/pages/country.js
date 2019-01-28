import React from "react";
import { Grid, Typography } from "@material-ui/core";
import DocumentHead from "../component/DocumentHead/Index";

function Country({ url }) {
  return (
    <Grid>
      <DocumentHead url={url} />
      <Typography variant="title">Country Page</Typography>
    </Grid>
  );
}

export default Country;
