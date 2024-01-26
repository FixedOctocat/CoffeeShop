.class Lcom/angara/coffeeshop/Login$AsyncRequest;
.super Landroid/os/AsyncTask;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/angara/coffeeshop/Login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/angara/coffeeshop/Login;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/angara/coffeeshop/Login;

    return-void
.end method

.method constructor <init>(Lcom/angara/coffeeshop/Login;)V
    .locals 0
    .param p1, "this$0"    # Lcom/angara/coffeeshop/Login;

    .line 41
    iput-object p1, p0, Lcom/angara/coffeeshop/Login$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Login;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/angara/coffeeshop/Login$AsyncRequest;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "arg"    # [Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/angara/coffeeshop/Login$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Login;

    iget-object v0, v0, Lcom/angara/coffeeshop/Login;->Login:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lcom/angara/coffeeshop/Login$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Login;

    iget-object v1, v1, Lcom/angara/coffeeshop/Login;->Password:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "password":Ljava/lang/String;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 49
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v3, Lokhttp3/FormBody$Builder;

    invoke-direct {v3}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 50
    const-string v4, "username"

    invoke-virtual {v3, v4, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v3

    .line 51
    const-string v4, "password"

    invoke-virtual {v3, v4, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v3

    .line 53
    .local v3, "formBody":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/angara/coffeeshop/Login$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Login;

    iget-object v6, v6, Lcom/angara/coffeeshop/Login;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/login"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 55
    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 58
    .local v4, "request":Lokhttp3/Request;
    invoke-virtual {v2, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    .line 60
    .local v5, "call":Lokhttp3/Call;
    :try_start_0
    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v6

    .line 61
    .local v6, "response":Lokhttp3/Response;
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 62
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 61
    :cond_0
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "username":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "client":Lokhttp3/OkHttpClient;
    .end local v3    # "formBody":Lokhttp3/RequestBody;
    .end local v4    # "request":Lokhttp3/Request;
    .end local v5    # "call":Lokhttp3/Call;
    .end local p0    # "this":Lcom/angara/coffeeshop/Login$AsyncRequest;
    .end local p1    # "arg":[Ljava/lang/String;
    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v6    # "response":Lokhttp3/Response;
    .restart local v0    # "username":Ljava/lang/String;
    .restart local v1    # "password":Ljava/lang/String;
    .restart local v2    # "client":Lokhttp3/OkHttpClient;
    .restart local v3    # "formBody":Lokhttp3/RequestBody;
    .restart local v4    # "request":Lokhttp3/Request;
    .restart local v5    # "call":Lokhttp3/Call;
    .restart local p0    # "this":Lcom/angara/coffeeshop/Login$AsyncRequest;
    .restart local p1    # "arg":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 64
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/angara/coffeeshop/Login$AsyncRequest;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 70
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/angara/coffeeshop/Login$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Login;

    iput-object p1, v0, Lcom/angara/coffeeshop/Login;->jwt:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/angara/coffeeshop/Login$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Login;

    iget-object v0, v0, Lcom/angara/coffeeshop/Login;->jwt:Ljava/lang/String;

    const-string v1, "\u0422\u0430\u043a\u043e\u0433\u043e \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044f \u043d\u0435 \u0441\u0443\u0449\u0435\u0441\u0442\u0432\u0443\u0435\u0442"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/angara/coffeeshop/Login$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Login;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/angara/coffeeshop/Login$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Login;

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430..."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    iget-object v0, p0, Lcom/angara/coffeeshop/Login$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Login;

    const-string v1, "jwt_data"

    invoke-virtual {v0, v1, v2}, Lcom/angara/coffeeshop/Login;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 79
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/angara/coffeeshop/Login$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Login;

    iget-object v2, v2, Lcom/angara/coffeeshop/Login;->jwt:Ljava/lang/String;

    const-string v3, "jwt"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 86
    iget-object v2, p0, Lcom/angara/coffeeshop/Login$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Login;

    invoke-virtual {v2}, Lcom/angara/coffeeshop/Login;->GoToProfile()V

    .line 88
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 83
    .restart local v0    # "sp":Landroid/content/SharedPreferences;
    .restart local v1    # "e":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v2

    .line 84
    .local v2, "ex":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
