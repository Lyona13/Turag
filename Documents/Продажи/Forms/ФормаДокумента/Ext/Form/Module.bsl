﻿
&НаКлиенте
Процедура ПослеЗаписи(ПараметрыЗаписи)
	РаботаСЗп.ПосчитатьЗарплату(Объект.Сумма * 0.03,Объект.Сотрудник,Объект.Дата);
КонецПроцедуры

&НаКлиенте
Процедура КоличествоЧеловекПриИзменении(Элемент)
	Объект.Сумма = Объект.Цена * Объект.КоличествоЧеловек;
КонецПроцедуры

&НаКлиенте
Процедура ЦенаПриИзменении(Элемент)
	Объект.Сумма = Объект.Цена * Объект.КоличествоЧеловек;
КонецПроцедуры
