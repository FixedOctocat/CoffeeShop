.class Lcom/angara/coffeeshop/Profile$AsyncRequest;
.super Landroid/os/AsyncTask;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/angara/coffeeshop/Profile;
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
.field final synthetic this$0:Lcom/angara/coffeeshop/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lcom/angara/coffeeshop/Profile;

    return-void
.end method

.method constructor <init>(Lcom/angara/coffeeshop/Profile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/angara/coffeeshop/Profile;

    .line 81
    iput-object p1, p0, Lcom/angara/coffeeshop/Profile$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Profile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/angara/coffeeshop/Profile$AsyncRequest;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "arg"    # [Ljava/lang/String;

    .line 84
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 86
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    iget-object v2, p0, Lcom/angara/coffeeshop/Profile$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Profile;

    iget-object v2, v2, Lcom/angara/coffeeshop/Profile;->jwt:Ljava/lang/String;

    .line 87
    const-string v3, "jwt"

    invoke-virtual {v1, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    .line 89
    .local v1, "formBody":Lokhttp3/RequestBody;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/angara/coffeeshop/Profile$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Profile;

    iget-object v4, v4, Lcom/angara/coffeeshop/Profile;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/history"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 94
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    .line 96
    .local v3, "call":Lokhttp3/Call;
    :try_start_0
    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 97
    .local v4, "response":Lokhttp3/Response;
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 98
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 97
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v1    # "formBody":Lokhttp3/RequestBody;
    .end local v2    # "request":Lokhttp3/Request;
    .end local v3    # "call":Lokhttp3/Call;
    .end local p0    # "this":Lcom/angara/coffeeshop/Profile$AsyncRequest;
    .end local p1    # "arg":[Ljava/lang/String;
    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v4    # "response":Lokhttp3/Response;
    .restart local v0    # "client":Lokhttp3/OkHttpClient;
    .restart local v1    # "formBody":Lokhttp3/RequestBody;
    .restart local v2    # "request":Lokhttp3/Request;
    .restart local v3    # "call":Lokhttp3/Call;
    .restart local p0    # "this":Lcom/angara/coffeeshop/Profile$AsyncRequest;
    .restart local p1    # "arg":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 100
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/angara/coffeeshop/Profile$AsyncRequest;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 106
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/angara/coffeeshop/Profile$AsyncRequest;->this$0:Lcom/angara/coffeeshop/Profile;

    iget-object v0, v0, Lcom/angara/coffeeshop/Profile;->history_col:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method
