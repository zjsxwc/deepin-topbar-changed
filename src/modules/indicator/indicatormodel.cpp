/*
 * Copyright (C) 2017 ~ 2017 Deepin Technology Co., Ltd.
 *
 * Author:     kirigaya <kirigaya@mkacg.com>
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "indicatormodel.h"
#include <QDebug>

using namespace dtb;
using namespace dtb::indicator;

IndicatorModel::IndicatorModel(QObject *parent) : QObject(parent)
{

}

QStringList IndicatorModel::appslist() const
{
    return m_appslist;
}

void IndicatorModel::setAppslist(const QStringList &appslist)
{
    if (m_appslist == appslist)
        return;

    m_appslist = appslist;

    emit appsListChanged(appslist);
}
