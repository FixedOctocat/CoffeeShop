.class public Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;
.super Landroid/os/AsyncTask;
.source "ShopMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/angara/coffeeshop/ShopMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetJsonFromServer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field client:Lokhttp3/OkHttpClient;

.field final synthetic this$0:Lcom/angara/coffeeshop/ShopMain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    const-class v0, Lcom/angara/coffeeshop/ShopMain;

    return-void
.end method

.method public constructor <init>(Lcom/angara/coffeeshop/ShopMain;)V
    .locals 1
    .param p1, "this$0"    # Lcom/angara/coffeeshop/ShopMain;

    .line 175
    iput-object p1, p0, Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;->this$0:Lcom/angara/coffeeshop/ShopMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 173
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;->client:Lokhttp3/OkHttpClient;

    .line 176
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 171
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "id"    # [Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;->this$0:Lcom/angara/coffeeshop/ShopMain;

    iget-object v0, v0, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 182
    .local v0, "builder":Lokhttp3/Request$Builder;
    const-string v1, "http://192.168.5.124:5000/api/items"

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 183
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 187
    .local v1, "request":Lokhttp3/Request;
    :try_start_0
    iget-object v2, p0, Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 188
    .local v2, "response":Lokhttp3/Response;
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;->this$0:Lcom/angara/coffeeshop/ShopMain;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;

    .line 194
    .end local v2    # "response":Lokhttp3/Response;
    goto :goto_0

    .line 188
    .end local v3    # "text":Ljava/lang/String;
    .restart local v2    # "response":Lokhttp3/Response;
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "builder":Lokhttp3/Request$Builder;
    .end local v1    # "request":Lokhttp3/Request;
    .end local p0    # "this":Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;
    .end local p1    # "id":[Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v2    # "response":Lokhttp3/Response;
    .restart local v0    # "builder":Lokhttp3/Request$Builder;
    .restart local v1    # "request":Lokhttp3/Request;
    .restart local p0    # "this":Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;
    .restart local p1    # "id":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, ""

    return-object v3

    .line 196
    .end local v0    # "builder":Lokhttp3/Request$Builder;
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;->this$0:Lcom/angara/coffeeshop/ShopMain;

    iget-object v0, v0, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 171
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopMain$GetJsonFromServer;->this$0:Lcom/angara/coffeeshop/ShopMain;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    nop

    .line 206
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
