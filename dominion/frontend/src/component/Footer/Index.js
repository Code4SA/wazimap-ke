import React from "react";
import { Grid, Typography } from "@material-ui/core";
import Partners from "./Partners";

function Footer() {
  return (
    <Grid
      container
      item
      xs={12}
      direction="column"
      justify="center"
      alignItems="center"
    >
      <Partners />
      <Typography variant="title">Footer Section</Typography>
    </Grid>
  );
}

export default Footer;
