/*
 * Copyright (C) 2016 The Qt Company Ltd.
 * Copyright (C) 2019,2020,2022 Konsulko Group
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <QtCore/QDebug>
#include <QtGui/QGuiApplication>
#include <QtQml/QQmlApplicationEngine>
#include <QtQml/QQmlContext>
#include <QtQuickControls2/QQuickStyle>
#include <QQuickWindow>

#include <map.h>

int main(int argc, char *argv[])
{
	QString graphic_role = QString("messaging");

	QGuiApplication app(argc, argv);
	app.setDesktopFileName(graphic_role);

	QQuickStyle::setStyle("AGL");

	QQmlApplicationEngine engine;
	QQmlContext *context = engine.rootContext();
        Map *map = new Map(context);
        context->setContextProperty("messaging", map);

        engine.load(QUrl(QStringLiteral("qrc:/Messaging.qml")));

	return app.exec();
}
