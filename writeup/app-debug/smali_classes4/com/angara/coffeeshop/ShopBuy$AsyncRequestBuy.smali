.class Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;
.super Landroid/os/AsyncTask;
.source "ShopBuy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/angara/coffeeshop/ShopBuy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncRequestBuy"
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
.field final synthetic this$0:Lcom/angara/coffeeshop/ShopBuy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    const-class v0, Lcom/angara/coffeeshop/ShopBuy;

    return-void
.end method

.method constructor <init>(Lcom/angara/coffeeshop/ShopBuy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/angara/coffeeshop/ShopBuy;

    .line 129
    iput-object p1, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "arg"    # [Ljava/lang/String;

    .line 132
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 134
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    iget-object v2, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    iget-object v2, v2, Lcom/angara/coffeeshop/ShopBuy;->kurza:[I

    .line 135
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kurza"

    invoke-virtual {v1, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    iget-object v2, v2, Lcom/angara/coffeeshop/ShopBuy;->jwt:Ljava/lang/String;

    .line 136
    const-string v3, "jwt"

    invoke-virtual {v1, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    .line 138
    .local v1, "formBody":Lokhttp3/RequestBody;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    iget-object v4, v4, Lcom/angara/coffeeshop/ShopBuy;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/purchase"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 140
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 143
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    .line 145
    .local v3, "call":Lokhttp3/Call;
    :try_start_0
    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 146
    .local v4, "response":Lokhttp3/Response;
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 147
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 146
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v1    # "formBody":Lokhttp3/RequestBody;
    .end local v2    # "request":Lokhttp3/Request;
    .end local v3    # "call":Lokhttp3/Call;
    .end local p0    # "this":Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;
    .end local p1    # "arg":[Ljava/lang/String;
    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v4    # "response":Lokhttp3/Response;
    .restart local v0    # "client":Lokhttp3/OkHttpClient;
    .restart local v1    # "formBody":Lokhttp3/RequestBody;
    .restart local v2    # "request":Lokhttp3/Request;
    .restart local v3    # "call":Lokhttp3/Call;
    .restart local p0    # "this":Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;
    .restart local p1    # "arg":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 149
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 156
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    const/4 v1, 0x0

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/angara/coffeeshop/ShopBuy;->kurza:[I

    .line 160
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    iget-object v0, v0, Lcom/angara/coffeeshop/ShopBuy;->buy_kurza:Landroid/widget/TextView;

    const-string v1, "\u0412\u0441\u0435\u0433\u043e: "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequestBuy;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    iget-object v0, v0, Lcom/angara/coffeeshop/ShopBuy;->buy_price:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method
