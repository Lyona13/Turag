﻿
&НаКлиенте
Процедура Печать(Команда)
	Табдок = ПечатьСерв();
	ТабДок.Показать();
КонецПроцедуры

&НаСервере
Функция ПечатьСерв()
	ТабДок = Новый ТабличныйДокумент;
	//обь = РеквизитФормыВЗначение("Объект");
	Макет= Документы.ПриёмНаРаботу.ПолучитьМакет("Макет");
	
	ОблДок = Макет.ПолучитьОбласть("ОбластьДок");
	
	ОблДок.Параметры.Автосалон ="Автосалон";
	
	
	ОблДок.Параметры.Подразделение = Строка(Объект.Подразделение);
	ОблДок.Параметры.ТН = Строка(Объект.Номер);
	ОблДок.Параметры.ФИО = Строка(Объект.Сотрудник);
	ОблДок.Параметры.дата = Строка(Объект.Дата);
	ОблДок.Параметры.должность = Строка(Объект.Должность);
	ОблДок.Параметры.номер = Строка(Объект.Номер);
	ОблДок.Параметры.оклад = Строка(Объект.ТарифнаяСтавка);
	ОблДок.Параметры.условия = Строка(Объект.ВидТарифнойСтавки);
	ТабДок.Вывести(ОблДок);
	//Макет.Вывести();
	
	Возврат  ТабДок;
КонецФункции