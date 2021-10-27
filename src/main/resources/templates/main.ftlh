<#import "parts/common.ftlh" as c>


<@c.page>
    <div class="row g-3">
        <div class="col-auto">
            <form method="get" action="/main" class="form-control">
                <input type="text" name="filter" value="${filter!}" aria-label="f" placeholder="Search by tag">
                <button type="submit" class="btn btn-primary m-lg-2">Search</button>
            </form>
        </div>
    </div>
    <a class="btn btn-primary mt-3" data-bs-toggle="collapse" href="#collapseExample" role="button"
       aria-expanded="false"
       aria-controls="collapseExample">
        Add new message
    </a>
    <div class="collapse" id="collapseExample">
        <div class="mb-3 mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="col-auto">
                    <label class="form-label" for="exampleFormControlInput1">Message</label>
                    <input type="text" name="text" class="form-control" placeholder="send message" aria-label="t"/>
                </div>
                <div class="col-auto">
                    <label class="form-label" for="exampleFormControlInput1">Tag</label>
                    <input type="text" name="tag" class="form-control" placeholder="send tag" aria-label="tag">
                </div>
                <div class="f">
                    <div class="mb-3 mt-3">
                        <label class="form-label" for="formFile">Choose file</label>
                        <input type="file" id="formFile" class="form-control">
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                </div>

                <div class="mt-3">
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
    <div class="row row-cols-3 row-cols-md-5 g-4 mt-3">
        <#list messages as message>
            <div class="card text-dark bg-light m-2">
                <div class="card-header text-muted"> ${message.authorName}</div>
                <div class="card-body">
                    <h5 class="card-title">${message.tag}</h5>
                    <p class="card-text">${message.text}</p>
                </div>
                <div class="card my-3">
                    <#if message.filename??>
                        <img src="/img/${message.filename}" alt="" class="card-img-top">
                    </#if>
                </div>
            </div>

        <#else>
            No messages
        </#list>
    </div>
</@c.page>