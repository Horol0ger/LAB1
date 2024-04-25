import { Link, NavLink } from "react-router-dom";
function Header() {
  return (
    <header>
      <nav>
        <div className="container">
          <NavLink to="/">ГЛАВНАЯ</NavLink>
          <NavLink to="/trainings">список пользователей</NavLink>
        </div>
      </nav>
    </header>
  );
}

export default Header;
