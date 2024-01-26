.class Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;
.super Landroid/os/AsyncTask;
.source "ShopBuy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/angara/coffeeshop/ShopBuy;
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
.field final synthetic this$0:Lcom/angara/coffeeshop/ShopBuy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/angara/coffeeshop/ShopBuy;

    return-void
.end method

.method constructor <init>(Lcom/angara/coffeeshop/ShopBuy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/angara/coffeeshop/ShopBuy;

    .line 67
    iput-object p1, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "arg"    # [Ljava/lang/String;

    .line 70
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 72
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    iget-object v2, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    iget-object v2, v2, Lcom/angara/coffeeshop/ShopBuy;->kurza:[I

    .line 73
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kurza"

    invoke-virtual {v1, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    .line 75
    .local v1, "formBody":Lokhttp3/RequestBody;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    iget-object v4, v4, Lcom/angara/coffeeshop/ShopBuy;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/pre_purchase"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 80
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    .line 82
    .local v3, "call":Lokhttp3/Call;
    :try_start_0
    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 83
    .local v4, "response":Lokhttp3/Response;
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 83
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v1    # "formBody":Lokhttp3/RequestBody;
    .end local v2    # "request":Lokhttp3/Request;
    .end local v3    # "call":Lokhttp3/Call;
    .end local p0    # "this":Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;
    .end local p1    # "arg":[Ljava/lang/String;
    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v4    # "response":Lokhttp3/Response;
    .restart local v0    # "client":Lokhttp3/OkHttpClient;
    .restart local v1    # "formBody":Lokhttp3/RequestBody;
    .restart local v2    # "request":Lokhttp3/Request;
    .restart local v3    # "call":Lokhttp3/Call;
    .restart local p0    # "this":Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;
    .restart local p1    # "arg":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 86
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 13
    .param p1, "s"    # Ljava/lang/String;

    .line 92
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/angara/coffeeshop/ShopBuy;->price:[Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "kurza_out":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v2, "price_out":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 98
    .local v4, "c":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 99
    .local v5, "sum":I
    iget-object v6, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    iget-object v6, v6, Lcom/angara/coffeeshop/ShopBuy;->price:[Ljava/lang/String;

    array-length v7, v6

    move v8, v3

    :goto_0
    const-string v9, "\u20bd"

    if-ge v8, v7, :cond_0

    aget-object v10, v6, v8

    .line 100
    .local v10, "i":Ljava/lang/String;
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 101
    aget-object v11, v4, v3

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const/4 v11, 0x1

    aget-object v12, v4, v11

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    aget-object v9, v4, v11

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v5, v9

    .line 99
    .end local v10    # "i":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\u0412\u0441\u0435\u0433\u043e:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    iget-object v1, v1, Lcom/angara/coffeeshop/ShopBuy;->buy_kurza:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/angara/coffeeshop/ShopBuy$AsyncRequest;->this$0:Lcom/angara/coffeeshop/ShopBuy;

    iget-object v1, v1, Lcom/angara/coffeeshop/ShopBuy;->buy_price:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method
