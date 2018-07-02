import React from "react"
import PropTypes from "prop-types"

import { SketchPicker } from 'react-color'


class ColorpickerNavbar extends React.Component {

  constructor(props) {
    super(props);

    this.state = { selector: props.selector };

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange = (navbar_color) => {
    var mynav = document.getElementById("mynav")
    mynav.style.background = navbar_color.hex;

    let elem = document.querySelector('#' + this.state.selector);

    elem.value = navbar_color.hex;
  }


  render(){
    return  (
        <React.Fragment>
          <SketchPicker navbar_color={this.props.navbar_color}
                        onChange={this.handleChange}/>
        </React.Fragment>
    );
  }
}

ColorpickerNavbar.propTypes = {};

export default ColorpickerNavbar
