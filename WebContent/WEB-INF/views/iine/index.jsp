<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>日報管理システムへようこそ</h2>
        <h3>【いいね　一覧】</h3>
        <table id="iine_list">
            <tbody>
                <tr>
                    <th class="report_title">タイトル</th>
                    <th class="report_name">氏名</th>
                    <th class="report_action">操作</th>
                </tr>
                <c:forEach var="iine" items="${getMyAllIines}" varStatus="status">
                    <tr class="row${status.count % 2}">
                        <td class="report_title">${iine.report.title}</td>
                        <td class="report_name"><c:out value="${iine.report.employee.name}" /></td>
                        <td class="report_action"><a href="<c:url value='/reports/show?id=${iine.report.id }' />">詳細を見る</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </c:param>
</c:import>
