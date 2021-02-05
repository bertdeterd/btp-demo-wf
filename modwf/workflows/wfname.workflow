{
	"contents": {
		"1cfca1a4-fe25-47e4-83ff-e8b64aef9820": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "wfname",
			"subject": "wfname",
			"name": "wfname",
			"documentation": "wf name descr",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"fbf7225b-31f5-4322-8afd-8bc364eec14e": {
					"name": "UserTask1"
				},
				"559e7863-4531-4d64-a1bc-166b6fb01603": {
					"name": "ServiceTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"5423fce8-ab25-42ae-9a62-30505c25efb9": {
					"name": "SequenceFlow2"
				},
				"cc18bcb7-155a-494c-85f6-c89572db3b7a": {
					"name": "SequenceFlow3"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"fbf7225b-31f5-4322-8afd-8bc364eec14e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "my subject",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/wfname/myfrm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "myfrm"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "UserTask1"
		},
		"559e7863-4531-4d64-a1bc-166b6fb01603": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "SAP_HTTPS_EJ_BA",
			"path": "/sap/bc/ztikkie/aanvraag",
			"httpMethod": "POST",
			"requestVariable": "${context}",
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "fbf7225b-31f5-4322-8afd-8bc364eec14e"
		},
		"5423fce8-ab25-42ae-9a62-30505c25efb9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "fbf7225b-31f5-4322-8afd-8bc364eec14e",
			"targetRef": "559e7863-4531-4d64-a1bc-166b6fb01603"
		},
		"cc18bcb7-155a-494c-85f6-c89572db3b7a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "559e7863-4531-4d64-a1bc-166b6fb01603",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"7a9416d8-d73f-410f-ab29-b957e7d38092": {},
				"06c3d576-ae35-4036-bc2c-9de8b6877818": {},
				"3f560078-6bb8-475a-9e40-634c7665abd8": {},
				"135b3b11-9eb9-4671-ac83-82cf178e188d": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 710,
			"y": 97,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 261,117",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "7a9416d8-d73f-410f-ab29-b957e7d38092",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"7a9416d8-d73f-410f-ab29-b957e7d38092": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 211,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "fbf7225b-31f5-4322-8afd-8bc364eec14e"
		},
		"06c3d576-ae35-4036-bc2c-9de8b6877818": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "261,118 423,118",
			"sourceSymbol": "7a9416d8-d73f-410f-ab29-b957e7d38092",
			"targetSymbol": "3f560078-6bb8-475a-9e40-634c7665abd8",
			"object": "5423fce8-ab25-42ae-9a62-30505c25efb9"
		},
		"3f560078-6bb8-475a-9e40-634c7665abd8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 373,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "559e7863-4531-4d64-a1bc-166b6fb01603"
		},
		"135b3b11-9eb9-4671-ac83-82cf178e188d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "423,116.25 727.5,116.25",
			"sourceSymbol": "3f560078-6bb8-475a-9e40-634c7665abd8",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "cc18bcb7-155a-494c-85f6-c89572db3b7a"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1
		}
	}
}