import React from "react";

function TrainingItem(props) {
  const {
    id,
    first_name,
    last_name,
    email,
    certificate_002,
    date_of_birth,
    password,
  } = props;

  return (
    <div className="news">
      <p>Имя: {first_name}</p>
      <p>Фамилия: {last_name}</p>
      <p>Почта: {email}</p>
      <p>Дата рождения: {date_of_birth}</p>
      <p>Хэш пароля: {password}</p>
    </div>
  );
}

export default TrainingItem;
