.class public Lcom/angara/coffeeshop/ShopMain$SetTextTask;
.super Landroid/os/AsyncTask;
.source "ShopMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/angara/coffeeshop/ShopMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetTextTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field client:Lokhttp3/OkHttpClient;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/angara/coffeeshop/ShopMain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    const-class v0, Lcom/angara/coffeeshop/ShopMain;

    return-void
.end method

.method public constructor <init>(Lcom/angara/coffeeshop/ShopMain;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/angara/coffeeshop/ShopMain;
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 134
    iput-object p1, p0, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->this$0:Lcom/angara/coffeeshop/ShopMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 131
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->client:Lokhttp3/OkHttpClient;

    .line 135
    iput-object p2, p0, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->textView:Landroid/widget/TextView;

    .line 136
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 129
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 9
    .param p1, "id"    # [Ljava/lang/Integer;

    .line 140
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->this$0:Lcom/angara/coffeeshop/ShopMain;

    iget-object v0, v0, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;

    const-string v1, "name"

    const/4 v2, 0x0

    const-string v3, "items"

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 142
    .local v0, "builder":Lokhttp3/Request$Builder;
    const-string v4, "http://192.168.5.124:5000/api/items"

    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 143
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 147
    .local v4, "request":Lokhttp3/Request;
    :try_start_0
    iget-object v5, p0, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    .line 148
    .local v5, "response":Lokhttp3/Response;
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 149
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->this$0:Lcom/angara/coffeeshop/ShopMain;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;

    .line 152
    iget-object v7, p0, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->this$0:Lcom/angara/coffeeshop/ShopMain;

    iget-object v7, v7, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 148
    .end local v6    # "text":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "builder":Lokhttp3/Request$Builder;
    .end local v4    # "request":Lokhttp3/Request;
    .end local p0    # "this":Lcom/angara/coffeeshop/ShopMain$SetTextTask;
    .end local p1    # "id":[Ljava/lang/Integer;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v5    # "response":Lokhttp3/Response;
    .restart local v0    # "builder":Lokhttp3/Request$Builder;
    .restart local v4    # "request":Lokhttp3/Request;
    .restart local p0    # "this":Lcom/angara/coffeeshop/ShopMain$SetTextTask;
    .restart local p1    # "id":[Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "\u041a\u043e\u0444\u0435"

    return-object v2

    .line 158
    .end local v0    # "builder":Lokhttp3/Request$Builder;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "request":Lokhttp3/Request;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->this$0:Lcom/angara/coffeeshop/ShopMain;

    iget-object v0, v0, Lcom/angara/coffeeshop/ShopMain;->json:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 159
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/angara/coffeeshop/ShopMain$SetTextTask;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method
