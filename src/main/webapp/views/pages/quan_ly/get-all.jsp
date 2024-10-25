<c:forEach var="article" varStatus="i" items="${listBottom}">
    <a href="../asm/item-detail?articleId=${article.id}">
    <div class="content-bottom__item">
        <figure class="content-bottom__img-container">
            <img class="content-bottom__img" alt="" src="${pageContext.request.contextPath}/assets/img/${article.imageUrl}"/>
        </figure>
        <div class="content-bottom__right">
            <div>
                <h2 class="content-bottom__title">${article.title}</h2>
                <p class="content-bottom__desc truncate_text">${article.content}</p>
            </div>
            <br>
            <div style="display: flex; justify-content: end">
                <span>${article.user.fullname} | ${article.published_date} | </span>
                <a style="color: #cf0000" href="../asm/quan-ly-update?articleId=${article.id}">update | </a>
                <a style="color: #cf0000" href="../asm/quan-ly-delete?articleId=${article.id}">delete</a>
            </div>
        </div>
    </div>
    </a>
</c:forEach>