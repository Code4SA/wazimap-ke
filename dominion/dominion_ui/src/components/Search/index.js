import React, { Component } from 'react';
import PropTypes from 'prop-types';

import { withStyles } from '@material-ui/core/styles';
import Input from '@material-ui/core/Input';
import { Grid, IconButton } from '@material-ui/core';
import back from '../../assets/images/icons/back.svg';
import background from '../../assets/images/bg/background.png';
import Results from './Results';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: theme.spacing.unit * 4,
    backgroundImage: `url(${background})`,
    backgroundRepeat: 'no-repeat',
    backgroundSize: 'cover',
    [theme.breakpoints.up('lg')]: {
      paddingTop: '100px',
      paddingLeft: '200px',
      paddingRight: '200px'
    },
    [theme.breakpoints.up('md')]: {
      paddingTop: '50px',
      paddingLeft: '185px',
      paddingRight: '185px'
    }
  },
  formContainer: {
    flexGrow: 1,
    padding: theme.spacing.unit * 14,
    width: '80%'
  },
  searchField: {
    marginLeft: theme.spacing.unit,
    marginRight: theme.spacing.unit,
    color: 'white',
    width: '100%',
    borderBottom: '2px solid #fff',
    padding: '15px 0 4px',
    fontFamily: theme.typography.fontFamily,
    fontSize: '18px',
    fontWeight: '600'
  },
  icon: {
    color: '#fff'
  },
  resultsContainer: {
    padding: '47px'
  }
});

const exampleData = [
  { denomination: 'District', name: 'Mortruisberg' },
  { denomination: 'Ward', name: 'Moertuin' },
  { denomination: 'Ward', name: 'Mortruisberg' },
  { denomination: 'Region', name: 'Mozem' },
  { denomination: 'Region', name: 'Mortruisberg' },
  { denomination: 'District', name: 'Moertuin' },
  { denomination: 'District', name: 'Mortruisberg' },
  { denomination: 'Ward', name: 'Moertuin' },
  { denomination: 'Ward', name: 'Mortruisberg' },
  { denomination: 'Region', name: 'Mozem' },
  { denomination: 'Region', name: 'Mortruisberg' },
  { denomination: 'District', name: 'Moertuin' }
];

class SearchOverlay extends Component {
  constructor(props) {
    super(props);

    this.state = {
      results: []
    };

    this.handleSearch = this.handleSearch.bind(this);
  }

  handleSearch(event) {
    if (event.target.value !== '') {
      const results = exampleData.filter(d => d.name.match(event.target.value));
      this.setState({ results });
    } else {
      this.setState({ results: [] });
    }
  }

  render() {
    const { classes, onClose } = this.props;
    const { results } = this.state;
    return (
      <Grid container direction="column" wrap="nowrap" className={classes.root}>
        <Grid container sm={12} wrap="nowrap">
          <Input className={classes.searchField} onChange={this.handleSearch} />
          <IconButton
            className={classes.iconButton}
            aria-label="Search"
            onClick={onClose}
          >
            <img src={back} alt="Search" className={classes.searchIcon} />
          </IconButton>
        </Grid>
        <Grid container sm={12} className={classes.resultsContainer}>
          <Results results={results} />
        </Grid>
      </Grid>
    );
  }
}

SearchOverlay.propTypes = {
  classes: PropTypes.shape().isRequired,
  onClose: PropTypes.func.isRequired
};

export default withStyles(styles)(SearchOverlay);
