.class public final Lokhttp3/FormBody$Builder;
.super Ljava/lang/Object;
.source "FormBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/FormBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0013\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007J\u0016\u0010\u000c\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u000eR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lokhttp3/FormBody$Builder;",
        "",
        "charset",
        "Ljava/nio/charset/Charset;",
        "(Ljava/nio/charset/Charset;)V",
        "names",
        "",
        "",
        "values",
        "add",
        "name",
        "value",
        "addEncoded",
        "build",
        "Lokhttp3/FormBody;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;

    .line 88
    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 88
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;)V

    .line 121
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "name"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    move-object/from16 v0, p0

    check-cast v0, Lokhttp3/FormBody$Builder;

    .local v0, "$this$add_u24lambda_u2d0":Lokhttp3/FormBody$Builder;
    const/4 v15, 0x0

    .line 93
    .local v15, "$i$a$-apply-FormBody$Builder$add$1":I
    iget-object v1, v0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;

    move-object v12, v1

    check-cast v12, Ljava/util/Collection;

    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 94
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    .line 93
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 95
    const/4 v8, 0x1

    .line 93
    const/4 v9, 0x0

    .line 96
    iget-object v10, v0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    .line 93
    const/16 v11, 0x5b

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-static/range {v1 .. v12}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, v0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;

    move-object v13, v1

    check-cast v13, Ljava/util/Collection;

    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 99
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    .line 98
    nop

    .line 100
    nop

    .line 98
    nop

    .line 101
    iget-object v10, v0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    .line 98
    const/4 v12, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v12}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    nop

    .line 92
    .end local v0    # "$this$add_u24lambda_u2d0":Lokhttp3/FormBody$Builder;
    .end local v15    # "$i$a$-apply-FormBody$Builder$add$1":I
    move-object/from16 v0, p0

    check-cast v0, Lokhttp3/FormBody$Builder;

    .line 103
    return-object v0
.end method

.method public final addEncoded(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "name"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    check-cast v0, Lokhttp3/FormBody$Builder;

    .local v0, "$this$addEncoded_u24lambda_u2d1":Lokhttp3/FormBody$Builder;
    const/4 v15, 0x0

    .line 106
    .local v15, "$i$a$-apply-FormBody$Builder$addEncoded$1":I
    iget-object v1, v0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;

    move-object v12, v1

    check-cast v12, Ljava/util/Collection;

    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 107
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    .line 108
    const/4 v6, 0x1

    .line 106
    const/4 v7, 0x0

    .line 109
    const/4 v8, 0x1

    .line 106
    const/4 v9, 0x0

    .line 110
    iget-object v10, v0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    .line 106
    const/16 v11, 0x53

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-static/range {v1 .. v12}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, v0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;

    move-object v13, v1

    check-cast v13, Ljava/util/Collection;

    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 113
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    .line 114
    nop

    .line 112
    nop

    .line 115
    nop

    .line 112
    nop

    .line 116
    iget-object v10, v0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    .line 112
    const/4 v12, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v12}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    nop

    .line 105
    .end local v0    # "$this$addEncoded_u24lambda_u2d1":Lokhttp3/FormBody$Builder;
    .end local v15    # "$i$a$-apply-FormBody$Builder$addEncoded$1":I
    move-object/from16 v0, p0

    check-cast v0, Lokhttp3/FormBody$Builder;

    .line 118
    return-object v0
.end method

.method public final build()Lokhttp3/FormBody;
    .locals 3

    .line 120
    new-instance v0, Lokhttp3/FormBody;

    iget-object v1, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lokhttp3/FormBody;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
