SELECT CR.ClassRoomID, CR.BuildingCode , CR.Capacity, C.ClassID, C.SubjectID, C.StartDate
FROM Class_Rooms CR
LEFT JOIN Classes C
ON CR.ClassRoomID = C.ClassRoomID