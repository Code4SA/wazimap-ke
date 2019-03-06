import React from 'react';
import PropTypes from 'prop-types';

import { Grid, Typography, Button, Modal } from '@material-ui/core';
import { withStyles } from '@material-ui/core/styles';

import arrow from '../../assets/images/icons/combined-shape.svg';
import PortalChooser from '../Modal/PortalChooser';

const styles = theme => ({
  heroDetailSection: {
    color: 'white',
    width: '90%',
    padding: theme.spacing.unit * 3,
    [theme.breakpoints.up('lg')]: {
      paddingLeft: theme.spacing.unit * 25
    },
    [theme.breakpoints.down('md')]: {
      margin: '2rem',
      padding: theme.spacing.unit * 10,
      marginTop: 0
    },
    [theme.breakpoints.down('sm')]: {
      position: 'absolute',
      margin: '2rem',
      padding: theme.spacing.unit,
      marginTop: 0
    }
  },
  text: {
    color: 'white',
    paddingTop: theme.spacing.unit * 6,
    width: '90%',
    [theme.breakpoints.up('lg')]: {
      paddingTop: theme.spacing.unit * 4
    },
    [theme.breakpoints.down('sm')]: {
      fontSize: '3rem',
      paddingTop: 0,
      width: '60%'
    }
  },
  body2: {
    color: 'white',
    textAlign: 'left',
    width: '50%',
    paddingTop: '2rem',
    [theme.breakpoints.down('md')]: {
      width: '100%'
    }
  },
  button: {
    textTransform: 'none',
    fontWeight: 800,
    fontSize: theme.typography.subtitle1.fontSize,
    color: 'white',
    border: '2px solid white',
    [theme.breakpoints.up('lg')]: {
      height: '4rem',
      paddingLeft: '4rem',
      paddingRight: '4rem'
    },
    [theme.breakpoints.down('md')]: {
      height: '4rem',
      width: '80%',
      paddingLeft: '4rem',
      paddingRight: '4rem'
    }
  },
  buttonArrow: {
    marginLeft: -theme.spacing.unit * 4,
    [theme.breakpoints.down('md')]: {
      display: 'none'
    }
  },
  modalContent: {
    margin: 'auto',
    top: theme.spacing.unit * 10,
    height: 'auto'
  }
});

class HeroDetail extends React.Component {
  constructor(props) {
    super(props);

    this.state = { choooserOpen: false };
    this.handleToggle = this.handleToggle.bind(this);
  }

  handleToggle() {
    this.setState(prevState => ({ choooserOpen: !prevState.choooserOpen }));
  }

  render() {
    const { classes } = this.props;
    const { choooserOpen } = this.state;
    const { countries } = window.dominion_countries;

    return (
      <div className={classes.heroDetailSection}>
        <Typography variant="h1" className={classes.text}>
          Discover the stories behind the data.
        </Typography>

        <Typography variant="body1" className={classes.body2}>
          Dominion makes data available to help add context and authority to
          public discourse and policy-making on vital issues of land ownership.
        </Typography>
        <Grid item sm={12} style={{ paddingTop: '2rem' }}>
          <Button
            variant="outlined"
            onClick={this.handleToggle}
            color="white"
            className={classes.button}
          >
            Select a Country
          </Button>
          <img
            src={arrow}
            alt="Select Country"
            className={classes.buttonArrow}
          />
        </Grid>
        <Modal
          disableAutoFocus
          hideBackdrop
          disablePortal
          open={choooserOpen}
          onClose={this.handleToggle}
          className={classes.modalContent}
          aria-labelledby="portal-chooser"
        >
          <PortalChooser close={this.handleToggle} countries={countries} />
        </Modal>
      </div>
    );
  }
}

HeroDetail.propTypes = {
  classes: PropTypes.isRequired
};

export default withStyles(styles)(HeroDetail);
