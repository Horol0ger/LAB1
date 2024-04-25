// import logo from "./logo.svg";
import React from "react";
import "./style/style.css";
import Header from "./components/Header";
import Home from "./pages/Home";
import { Routes, Route } from "react-router-dom";
import TrainingPage from "./pages/TrainingPage";
function App() {
  return (
    <>
      <Header />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/trainings" element={<TrainingPage />} />
        <Route path="" element={<h1>Страница не найдена</h1>} />
      </Routes>
      {/* <Footer /> */}
    </>
  );
}

export default App;
