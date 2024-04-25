import React, { useEffect, useState } from "react";
import TrainingItem from "../components/TrainingItem";
import axios from "axios";

const TrainingPage = () => {
  const [trainings, setTrainings] = useState([]);

  useEffect(() => {
    const fetchTrainings = async () => {
      try {
        const response = await axios.get(
          ` ${process.env.REACT_APP_API_URL}/main/getu`
        );

        setTrainings(response.data);
      } catch (error) {
        console.error("Ошибка:", error);
      }
    };

    fetchTrainings();
  }, []);

  useEffect(() => {}, [trainings]);

  return (
    <div>
      <h1>пользователи: </h1>
      {trainings.map((training) => (
        <TrainingItem key={training.id} {...training} />
      ))}

      {/* {
      trainings.map((training) => (
        <TrainingItem
          key={training.id}
          id={training.id}
          first_name={training.first_name}
          last_name={training.last_name}
          email={training.email}
          certificate_002={training.certificate_002}
          date_of_birth={training.date_of_birth}
          password={training.password}
          ammo_score={training.ammo_score}
          role={training.role}
        />
      ))} */}
    </div>
  );
};

export default TrainingPage;

// import React, { useEffect, useState } from "react";
// import TrainingItem from "../components/TrainingItem";
// import axios from "axios";
// const TrainingPage = () => {
//   const [trainings, setTrainings] = useState([]);

//   useEffect(() => {
//     const fetchTrainings = async () => {
//       try {
//         const response = await axios.get(
//           `${process.env.REACT_APP_API_URL}/main/getu`
//         );
//         console.log(response.data);

//         setTrainings(response.data);
//         console.log(trainings);
//       } catch (error) {
//         console.error("Ошибка:", error);
//       }
//     };
//     fetchTrainings();
//   }, []);

//   return (
//     <div>
//       <h1>пользователи: </h1>
//       {trainings.map((training) => (
//         <TrainingItem
//           key={training.id}
//           id={training.id}
//           first_name={training.first_name}
//           last_name={training.last_name}
//           email={training.email}
//           certificate_002={training.certificate_002}
//           date_of_birth={training.date_of_birth}
//           password={training.password}
//           ammo_score={training.ammo_score}
//           role={training.role}
//         />
//       ))}
//     </div>
//   );
// };

// export default TrainingPage;
