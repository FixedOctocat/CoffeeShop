.class public abstract Lokio/FileHandle;
.super Ljava/lang/Object;
.source "FileHandle.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/FileHandle$FileHandleSink;,
        Lokio/FileHandle$FileHandleSource;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 5 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 6 -Util.kt\nokio/_UtilKt\n*L\n1#1,442:1\n27#2:443\n27#2:445\n27#2:446\n27#2:447\n27#2:448\n27#2:449\n27#2:450\n27#2:451\n27#2:455\n27#2:457\n1#3:444\n61#4:452\n61#4:453\n61#4:454\n50#5:456\n84#6:458\n84#6:459\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n*L\n67#1:443\n79#1:445\n90#1:446\n103#1:447\n117#1:448\n127#1:449\n137#1:450\n149#1:451\n219#1:455\n285#1:457\n167#1:452\n193#1:453\n200#1:454\n246#1:456\n343#1:458\n372#1:459\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002()B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000cJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u00020\u000eH$J\u0008\u0010\u0016\u001a\u00020\u000eH$J(\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u0008H$J\u0010\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u0011H$J\u0008\u0010\u001f\u001a\u00020\u0011H$J(\u0010 \u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u0008H$J&\u0010!\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u0008J\u001e\u0010!\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u0011J \u0010#\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u0011H\u0002J\u0016\u0010$\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010$\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010%\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0011J\u0006\u0010\u001e\u001a\u00020\u0011J\u0010\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0011J&\u0010&\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u0008J\u001e\u0010&\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u0011J \u0010\'\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u0011H\u0002R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006*"
    }
    d2 = {
        "Lokio/FileHandle;",
        "Ljava/io/Closeable;",
        "Lokio/Closeable;",
        "readWrite",
        "",
        "(Z)V",
        "closed",
        "openStreamCount",
        "",
        "getReadWrite",
        "()Z",
        "appendingSink",
        "Lokio/Sink;",
        "close",
        "",
        "flush",
        "position",
        "",
        "sink",
        "source",
        "Lokio/Source;",
        "protectedClose",
        "protectedFlush",
        "protectedRead",
        "fileOffset",
        "array",
        "",
        "arrayOffset",
        "byteCount",
        "protectedResize",
        "size",
        "protectedSize",
        "protectedWrite",
        "read",
        "Lokio/Buffer;",
        "readNoCloseCheck",
        "reposition",
        "resize",
        "write",
        "writeNoCloseCheck",
        "FileHandleSink",
        "FileHandleSource",
        "okio"
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
.field private closed:Z

.field private openStreamCount:I

.field private final readWrite:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "readWrite"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lokio/FileHandle;->readWrite:Z

    .line 35
    return-void
.end method

.method public static final synthetic access$getClosed$p(Lokio/FileHandle;)Z
    .locals 1
    .param p0, "$this"    # Lokio/FileHandle;

    .line 35
    iget-boolean v0, p0, Lokio/FileHandle;->closed:Z

    return v0
.end method

.method public static final synthetic access$getOpenStreamCount$p(Lokio/FileHandle;)I
    .locals 1
    .param p0, "$this"    # Lokio/FileHandle;

    .line 35
    iget v0, p0, Lokio/FileHandle;->openStreamCount:I

    return v0
.end method

.method public static final synthetic access$readNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)J
    .locals 2
    .param p0, "$this"    # Lokio/FileHandle;
    .param p1, "fileOffset"    # J
    .param p3, "sink"    # Lokio/Buffer;
    .param p4, "byteCount"    # J

    .line 35
    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->readNoCloseCheck(JLokio/Buffer;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$setOpenStreamCount$p(Lokio/FileHandle;I)V
    .locals 0
    .param p0, "$this"    # Lokio/FileHandle;
    .param p1, "<set-?>"    # I

    .line 35
    iput p1, p0, Lokio/FileHandle;->openStreamCount:I

    return-void
.end method

.method public static final synthetic access$writeNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)V
    .locals 0
    .param p0, "$this"    # Lokio/FileHandle;
    .param p1, "fileOffset"    # J
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # J

    .line 35
    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->writeNoCloseCheck(JLokio/Buffer;J)V

    return-void
.end method

.method private final readNoCloseCheck(JLokio/Buffer;J)J
    .locals 17
    .param p1, "fileOffset"    # J
    .param p3, "sink"    # Lokio/Buffer;
    .param p4, "byteCount"    # J

    .line 332
    move-object/from16 v0, p3

    move-wide/from16 v1, p4

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    .line 334
    move-wide/from16 v5, p1

    .line 335
    .local v5, "currentOffset":J
    add-long v7, p1, v1

    .line 337
    .local v7, "targetOffset":J
    :goto_1
    cmp-long v3, v5, v7

    if-gez v3, :cond_4

    .line 338
    invoke-virtual {v0, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v3

    .line 339
    .local v3, "tail":Lokio/Segment;
    nop

    .line 340
    nop

    .line 341
    iget-object v12, v3, Lokio/Segment;->data:[B

    .line 342
    iget v13, v3, Lokio/Segment;->limit:I

    .line 343
    sub-long v9, v7, v5

    .local v9, "a$iv":J
    iget v11, v3, Lokio/Segment;->limit:I

    rsub-int v11, v11, 0x2000

    .local v11, "b$iv":I
    const/4 v14, 0x0

    .line 458
    .local v14, "$i$f$minOf":I
    move-wide v15, v5

    .end local v5    # "currentOffset":J
    .local v15, "currentOffset":J
    int-to-long v4, v11

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 343
    .end local v9    # "a$iv":J
    .end local v11    # "b$iv":I
    .end local v14    # "$i$f$minOf":I
    long-to-int v14, v4

    .line 339
    move-object/from16 v9, p0

    move-wide v10, v15

    invoke-virtual/range {v9 .. v14}, Lokio/FileHandle;->protectedRead(J[BII)I

    move-result v4

    .line 346
    .local v4, "readByteCount":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 347
    iget v5, v3, Lokio/Segment;->pos:I

    iget v6, v3, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_1

    .line 349
    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 350
    invoke-static {v3}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 352
    :cond_1
    cmp-long v5, p1, v15

    if-nez v5, :cond_2

    const-wide/16 v5, -0x1

    return-wide v5

    .line 353
    :cond_2
    goto :goto_2

    .line 356
    :cond_3
    iget v5, v3, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    iput v5, v3, Lokio/Segment;->limit:I

    .line 357
    int-to-long v5, v4

    add-long/2addr v5, v15

    .line 358
    .end local v15    # "currentOffset":J
    .restart local v5    # "currentOffset":J
    invoke-virtual/range {p3 .. p3}, Lokio/Buffer;->size()J

    move-result-wide v9

    int-to-long v11, v4

    add-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    const/4 v4, 0x1

    .end local v3    # "tail":Lokio/Segment;
    .end local v4    # "readByteCount":I
    goto :goto_1

    .line 337
    :cond_4
    move-wide v15, v5

    .line 361
    .end local v5    # "currentOffset":J
    .restart local v15    # "currentOffset":J
    :goto_2
    sub-long v5, v15, p1

    return-wide v5

    .line 444
    .end local v7    # "targetOffset":J
    .end local v15    # "currentOffset":J
    :cond_5
    const/4 v3, 0x0

    .line 332
    .local v3, "$i$a$-require-FileHandle$readNoCloseCheck$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-FileHandle$readNoCloseCheck$1":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static synthetic sink$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->sink(J)Lokio/Sink;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sink"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic source$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/Source;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: source"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeNoCloseCheck(JLokio/Buffer;J)V
    .locals 13
    .param p1, "fileOffset"    # J
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # J

    .line 365
    move-object/from16 v0, p3

    invoke-virtual/range {p3 .. p3}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    .line 367
    move-wide v1, p1

    .line 368
    .local v1, "currentOffset":J
    add-long v3, p1, p4

    .line 370
    .local v3, "targetOffset":J
    :cond_0
    :goto_0
    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 371
    iget-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v5

    .line 372
    .local v11, "head":Lokio/Segment;
    sub-long v5, v3, v1

    .local v5, "a$iv":J
    iget v7, v11, Lokio/Segment;->limit:I

    iget v8, v11, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    .local v7, "b$iv":I
    const/4 v8, 0x0

    .line 459
    .local v8, "$i$f$minOf":I
    int-to-long v9, v7

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 372
    .end local v5    # "a$iv":J
    .end local v7    # "b$iv":I
    .end local v8    # "$i$f$minOf":I
    long-to-int v12, v9

    .line 373
    .local v12, "toCopy":I
    iget-object v8, v11, Lokio/Segment;->data:[B

    iget v9, v11, Lokio/Segment;->pos:I

    move-object v5, p0

    move-wide v6, v1

    move v10, v12

    invoke-virtual/range {v5 .. v10}, Lokio/FileHandle;->protectedWrite(J[BII)V

    .line 375
    iget v5, v11, Lokio/Segment;->pos:I

    add-int/2addr v5, v12

    iput v5, v11, Lokio/Segment;->pos:I

    .line 376
    int-to-long v5, v12

    add-long/2addr v1, v5

    .line 377
    invoke-virtual/range {p3 .. p3}, Lokio/Buffer;->size()J

    move-result-wide v5

    int-to-long v7, v12

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 379
    iget v5, v11, Lokio/Segment;->pos:I

    iget v6, v11, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_0

    .line 380
    invoke-virtual {v11}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 381
    invoke-static {v11}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .end local v11    # "head":Lokio/Segment;
    .end local v12    # "toCopy":I
    goto :goto_0

    .line 384
    :cond_1
    return-void
.end method


# virtual methods
.method public final appendingSink()Lokio/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lokio/FileHandle;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/FileHandle;->sink(J)Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x0

    .line 457
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 286
    .local v1, "$i$a$-synchronized-FileHandle$close$1":I
    :try_start_0
    iget-boolean v2, p0, Lokio/FileHandle;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .end local v0    # "$i$f$synchronized":I
    .end local v1    # "$i$a$-synchronized-FileHandle$close$1":I
    monitor-exit p0

    return-void

    .line 287
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-FileHandle$close$1":I
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lokio/FileHandle;->closed:Z

    .line 288
    iget v2, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .end local v0    # "$i$f$synchronized":I
    .end local v1    # "$i$a$-synchronized-FileHandle$close$1":I
    monitor-exit p0

    return-void

    .line 289
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-FileHandle$close$1":I
    :cond_1
    nop

    .end local v1    # "$i$a$-synchronized-FileHandle$close$1":I
    :try_start_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 457
    nop

    .line 290
    .end local v0    # "$i$f$synchronized":I
    invoke-virtual {p0}, Lokio/FileHandle;->protectedClose()V

    .line 291
    return-void

    .line 289
    .restart local v0    # "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    .line 137
    const/4 v0, 0x0

    .line 450
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 138
    .local v1, "$i$a$-synchronized-FileHandle$flush$2":I
    :try_start_0
    iget-boolean v2, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 139
    nop

    .end local v1    # "$i$a$-synchronized-FileHandle$flush$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 450
    nop

    .line 140
    .end local v0    # "$i$f$synchronized":I
    invoke-virtual {p0}, Lokio/FileHandle;->protectedFlush()V

    return-void

    .line 444
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-FileHandle$flush$2":I
    :cond_0
    const/4 v2, 0x0

    .line 138
    .local v2, "$i$a$-check-FileHandle$flush$2$1":I
    :try_start_1
    const-string v3, "closed"

    .end local v2    # "$i$a$-check-FileHandle$flush$2$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$f$synchronized":I
    .end local p0    # "this":Lokio/FileHandle;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .end local v1    # "$i$a$-synchronized-FileHandle$flush$2":I
    .restart local v0    # "$i$f$synchronized":I
    .restart local p0    # "this":Lokio/FileHandle;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 444
    .end local v0    # "$i$f$synchronized":I
    :cond_1
    const/4 v0, 0x0

    .line 136
    .local v0, "$i$a$-check-FileHandle$flush$1":I
    const-string v0, "file handle is read-only"

    .end local v0    # "$i$a$-check-FileHandle$flush$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getReadWrite()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    return v0
.end method

.method public final position(Lokio/Sink;)J
    .locals 5
    .param p1, "sink"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    move-object v0, p1

    .line 243
    .local v0, "sink":Lokio/Sink;
    const-wide/16 v1, 0x0

    .line 245
    .local v1, "bufferSize":J
    instance-of v3, v0, Lokio/RealBufferedSink;

    if-eqz v3, :cond_0

    .line 246
    move-object v3, v0

    check-cast v3, Lokio/RealBufferedSink;

    .local v3, "this_$iv":Lokio/RealBufferedSink;
    const/4 v4, 0x0

    .line 456
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 246
    .end local v3    # "this_$iv":Lokio/RealBufferedSink;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 247
    move-object v3, v0

    check-cast v3, Lokio/RealBufferedSink;

    iget-object v0, v3, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    .line 250
    :cond_0
    instance-of v3, v0, Lokio/FileHandle$FileHandleSink;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSink;->getFileHandle()Lokio/FileHandle;

    move-result-object v3

    if-ne v3, p0, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 253
    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSink;->getClosed()Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 255
    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSink;->getPosition()J

    move-result-wide v3

    add-long/2addr v3, v1

    return-wide v3

    .line 444
    :cond_2
    const/4 v3, 0x0

    .line 253
    .local v3, "$i$a$-check-FileHandle$position$4":I
    nop

    .end local v3    # "$i$a$-check-FileHandle$position$4":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_3
    const/4 v3, 0x0

    .line 251
    .local v3, "$i$a$-require-FileHandle$position$3":I
    nop

    .line 250
    .end local v3    # "$i$a$-require-FileHandle$position$3":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "sink was not created by this FileHandle"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final position(Lokio/Source;)J
    .locals 5
    .param p1, "source"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    move-object v0, p1

    .line 164
    .local v0, "source":Lokio/Source;
    const-wide/16 v1, 0x0

    .line 166
    .local v1, "bufferSize":J
    instance-of v3, v0, Lokio/RealBufferedSource;

    if-eqz v3, :cond_0

    .line 167
    move-object v3, v0

    check-cast v3, Lokio/RealBufferedSource;

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 452
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 167
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 168
    move-object v3, v0

    check-cast v3, Lokio/RealBufferedSource;

    iget-object v0, v3, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 171
    :cond_0
    instance-of v3, v0, Lokio/FileHandle$FileHandleSource;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSource;->getFileHandle()Lokio/FileHandle;

    move-result-object v3

    if-ne v3, p0, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 174
    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSource;->getClosed()Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 176
    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v3}, Lokio/FileHandle$FileHandleSource;->getPosition()J

    move-result-wide v3

    sub-long/2addr v3, v1

    return-wide v3

    .line 444
    :cond_2
    const/4 v3, 0x0

    .line 174
    .local v3, "$i$a$-check-FileHandle$position$2":I
    nop

    .end local v3    # "$i$a$-check-FileHandle$position$2":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 171
    :cond_3
    const/4 v3, 0x0

    .line 172
    .local v3, "$i$a$-require-FileHandle$position$1":I
    nop

    .line 171
    .end local v3    # "$i$a$-require-FileHandle$position$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "source was not created by this FileHandle"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected abstract protectedClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract protectedFlush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract protectedRead(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract protectedResize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract protectedSize()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract protectedWrite(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final read(J[BII)I
    .locals 4
    .param p1, "fileOffset"    # J
    .param p3, "array"    # [B
    .param p4, "arrayOffset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    .line 443
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 68
    .local v1, "$i$a$-synchronized-FileHandle$read$1":I
    :try_start_0
    iget-boolean v2, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 69
    nop

    .end local v1    # "$i$a$-synchronized-FileHandle$read$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 443
    nop

    .line 70
    .end local v0    # "$i$f$synchronized":I
    invoke-virtual/range {p0 .. p5}, Lokio/FileHandle;->protectedRead(J[BII)I

    move-result v0

    return v0

    .line 444
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-FileHandle$read$1":I
    :cond_0
    const/4 v2, 0x0

    .line 68
    .local v2, "$i$a$-check-FileHandle$read$1$1":I
    :try_start_1
    const-string v3, "closed"

    .end local v2    # "$i$a$-check-FileHandle$read$1$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$f$synchronized":I
    .end local p0    # "this":Lokio/FileHandle;
    .end local p1    # "fileOffset":J
    .end local p3    # "array":[B
    .end local p4    # "arrayOffset":I
    .end local p5    # "byteCount":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .end local v1    # "$i$a$-synchronized-FileHandle$read$1":I
    .restart local v0    # "$i$f$synchronized":I
    .restart local p0    # "this":Lokio/FileHandle;
    .restart local p1    # "fileOffset":J
    .restart local p3    # "array":[B
    .restart local p4    # "arrayOffset":I
    .restart local p5    # "byteCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final read(JLokio/Buffer;J)J
    .locals 4
    .param p1, "fileOffset"    # J
    .param p3, "sink"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .line 445
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 80
    .local v1, "$i$a$-synchronized-FileHandle$read$2":I
    :try_start_0
    iget-boolean v2, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 81
    nop

    .end local v1    # "$i$a$-synchronized-FileHandle$read$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 445
    nop

    .line 82
    .end local v0    # "$i$f$synchronized":I
    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->readNoCloseCheck(JLokio/Buffer;J)J

    move-result-wide v0

    return-wide v0

    .line 444
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-FileHandle$read$2":I
    :cond_0
    const/4 v2, 0x0

    .line 80
    .local v2, "$i$a$-check-FileHandle$read$2$1":I
    :try_start_1
    const-string v3, "closed"

    .end local v2    # "$i$a$-check-FileHandle$read$2$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$f$synchronized":I
    .end local p0    # "this":Lokio/FileHandle;
    .end local p1    # "fileOffset":J
    .end local p3    # "sink":Lokio/Buffer;
    .end local p4    # "byteCount":J
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v1    # "$i$a$-synchronized-FileHandle$read$2":I
    .restart local v0    # "$i$f$synchronized":I
    .restart local p0    # "this":Lokio/FileHandle;
    .restart local p1    # "fileOffset":J
    .restart local p3    # "sink":Lokio/Buffer;
    .restart local p4    # "byteCount":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final reposition(Lokio/Sink;J)V
    .locals 6
    .param p1, "sink"    # Lokio/Sink;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    instance-of v0, p1, Lokio/RealBufferedSink;

    const-string v1, "closed"

    const-string v2, "sink was not created by this FileHandle"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 266
    move-object v0, p1

    check-cast v0, Lokio/RealBufferedSink;

    iget-object v0, v0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    .line 267
    .local v0, "fileHandleSink":Lokio/Sink;
    instance-of v5, v0, Lokio/FileHandle$FileHandleSink;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v5}, Lokio/FileHandle$FileHandleSink;->getFileHandle()Lokio/FileHandle;

    move-result-object v5

    if-ne v5, p0, :cond_0

    move v3, v4

    :cond_0
    if-eqz v3, :cond_2

    .line 270
    move-object v2, v0

    check-cast v2, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v2}, Lokio/FileHandle$FileHandleSink;->getClosed()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_1

    .line 272
    move-object v1, p1

    check-cast v1, Lokio/RealBufferedSink;

    invoke-virtual {v1}, Lokio/RealBufferedSink;->emit()Lokio/BufferedSink;

    .line 273
    move-object v1, v0

    check-cast v1, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v1, p2, p3}, Lokio/FileHandle$FileHandleSink;->setPosition(J)V

    .end local v0    # "fileHandleSink":Lokio/Sink;
    goto :goto_0

    .line 444
    .restart local v0    # "fileHandleSink":Lokio/Sink;
    :cond_1
    const/4 v2, 0x0

    .line 270
    .local v2, "$i$a$-check-FileHandle$reposition$6":I
    nop

    .end local v2    # "$i$a$-check-FileHandle$reposition$6":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_2
    const/4 v1, 0x0

    .line 268
    .local v1, "$i$a$-require-FileHandle$reposition$5":I
    nop

    .line 267
    .end local v1    # "$i$a$-require-FileHandle$reposition$5":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    .end local v0    # "fileHandleSink":Lokio/Sink;
    :cond_3
    instance-of v0, p1, Lokio/FileHandle$FileHandleSink;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSink;->getFileHandle()Lokio/FileHandle;

    move-result-object v0

    if-ne v0, p0, :cond_4

    move v3, v4

    :cond_4
    if-eqz v3, :cond_6

    .line 278
    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSink;->getClosed()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_5

    .line 279
    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSink;

    invoke-virtual {v0, p2, p3}, Lokio/FileHandle$FileHandleSink;->setPosition(J)V

    .line 281
    :goto_0
    return-void

    .line 444
    :cond_5
    const/4 v0, 0x0

    .line 278
    .local v0, "$i$a$-check-FileHandle$reposition$8":I
    nop

    .end local v0    # "$i$a$-check-FileHandle$reposition$8":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_6
    const/4 v0, 0x0

    .line 276
    .local v0, "$i$a$-require-FileHandle$reposition$7":I
    nop

    .line 275
    .end local v0    # "$i$a$-require-FileHandle$reposition$7":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reposition(Lokio/Source;J)V
    .locals 9
    .param p1, "source"    # Lokio/Source;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    instance-of v0, p1, Lokio/RealBufferedSource;

    const-string v1, "closed"

    const-string v2, "source was not created by this FileHandle"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 187
    move-object v0, p1

    check-cast v0, Lokio/RealBufferedSource;

    iget-object v0, v0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 188
    .local v0, "fileHandleSource":Lokio/Source;
    instance-of v5, v0, Lokio/FileHandle$FileHandleSource;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v5}, Lokio/FileHandle$FileHandleSource;->getFileHandle()Lokio/FileHandle;

    move-result-object v5

    if-ne v5, p0, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v5, :cond_4

    .line 191
    move-object v2, v0

    check-cast v2, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v2}, Lokio/FileHandle$FileHandleSource;->getClosed()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_3

    .line 193
    move-object v1, p1

    check-cast v1, Lokio/RealBufferedSource;

    .local v1, "this_$iv":Lokio/RealBufferedSource;
    const/4 v2, 0x0

    .line 453
    .local v2, "$i$f$getBuffer":I
    iget-object v1, v1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 193
    .end local v1    # "this_$iv":Lokio/RealBufferedSource;
    .end local v2    # "$i$f$getBuffer":I
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 194
    .local v1, "bufferSize":J
    move-object v5, v0

    check-cast v5, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v5}, Lokio/FileHandle$FileHandleSource;->getPosition()J

    move-result-wide v5

    sub-long/2addr v5, v1

    sub-long v5, p2, v5

    .line 195
    .local v5, "toSkip":J
    const-wide/16 v7, 0x0

    cmp-long v7, v7, v5

    if-gtz v7, :cond_1

    cmp-long v7, v5, v1

    if-gez v7, :cond_1

    move v3, v4

    :cond_1
    if-eqz v3, :cond_2

    .line 197
    move-object v3, p1

    check-cast v3, Lokio/RealBufferedSource;

    invoke-virtual {v3, v5, v6}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_1

    .line 200
    :cond_2
    move-object v3, p1

    check-cast v3, Lokio/RealBufferedSource;

    .local v3, "this_$iv":Lokio/RealBufferedSource;
    const/4 v4, 0x0

    .line 454
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 200
    .end local v3    # "this_$iv":Lokio/RealBufferedSource;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    .line 201
    move-object v3, v0

    check-cast v3, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v3, p2, p3}, Lokio/FileHandle$FileHandleSource;->setPosition(J)V

    .end local v0    # "fileHandleSource":Lokio/Source;
    .end local v1    # "bufferSize":J
    .end local v5    # "toSkip":J
    goto :goto_1

    .line 444
    .restart local v0    # "fileHandleSource":Lokio/Source;
    :cond_3
    const/4 v2, 0x0

    .line 191
    .local v2, "$i$a$-check-FileHandle$reposition$2":I
    nop

    .end local v2    # "$i$a$-check-FileHandle$reposition$2":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_4
    const/4 v1, 0x0

    .line 189
    .local v1, "$i$a$-require-FileHandle$reposition$1":I
    nop

    .line 188
    .end local v1    # "$i$a$-require-FileHandle$reposition$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    .end local v0    # "fileHandleSource":Lokio/Source;
    :cond_5
    instance-of v0, p1, Lokio/FileHandle$FileHandleSource;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSource;->getFileHandle()Lokio/FileHandle;

    move-result-object v0

    if-ne v0, p0, :cond_6

    move v3, v4

    :cond_6
    if-eqz v3, :cond_8

    .line 207
    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v0}, Lokio/FileHandle$FileHandleSource;->getClosed()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_7

    .line 208
    move-object v0, p1

    check-cast v0, Lokio/FileHandle$FileHandleSource;

    invoke-virtual {v0, p2, p3}, Lokio/FileHandle$FileHandleSource;->setPosition(J)V

    .line 210
    :goto_1
    return-void

    .line 444
    :cond_7
    const/4 v0, 0x0

    .line 207
    .local v0, "$i$a$-check-FileHandle$reposition$4":I
    nop

    .end local v0    # "$i$a$-check-FileHandle$reposition$4":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_8
    const/4 v0, 0x0

    .line 205
    .local v0, "$i$a$-require-FileHandle$reposition$3":I
    nop

    .line 204
    .end local v0    # "$i$a$-require-FileHandle$reposition$3":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final resize(J)V
    .locals 4
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    .line 103
    const/4 v0, 0x0

    .line 447
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 104
    .local v1, "$i$a$-synchronized-FileHandle$resize$2":I
    :try_start_0
    iget-boolean v2, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 105
    nop

    .end local v1    # "$i$a$-synchronized-FileHandle$resize$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 447
    nop

    .line 106
    .end local v0    # "$i$f$synchronized":I
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->protectedResize(J)V

    return-void

    .line 444
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-FileHandle$resize$2":I
    :cond_0
    const/4 v2, 0x0

    .line 104
    .local v2, "$i$a$-check-FileHandle$resize$2$1":I
    :try_start_1
    const-string v3, "closed"

    .end local v2    # "$i$a$-check-FileHandle$resize$2$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$f$synchronized":I
    .end local p0    # "this":Lokio/FileHandle;
    .end local p1    # "size":J
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v1    # "$i$a$-synchronized-FileHandle$resize$2":I
    .restart local v0    # "$i$f$synchronized":I
    .restart local p0    # "this":Lokio/FileHandle;
    .restart local p1    # "size":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 444
    .end local v0    # "$i$f$synchronized":I
    :cond_1
    const/4 v0, 0x0

    .line 102
    .local v0, "$i$a$-check-FileHandle$resize$1":I
    const-string v0, "file handle is read-only"

    .end local v0    # "$i$a$-check-FileHandle$resize$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final sink(J)Lokio/Sink;
    .locals 4
    .param p1, "fileOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    .line 219
    const/4 v0, 0x0

    .line 455
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 220
    .local v1, "$i$a$-synchronized-FileHandle$sink$2":I
    :try_start_0
    iget-boolean v2, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 221
    iget v2, p0, Lokio/FileHandle;->openStreamCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-synchronized-FileHandle$sink$2":I
    monitor-exit p0

    .line 455
    nop

    .line 223
    .end local v0    # "$i$f$synchronized":I
    new-instance v0, Lokio/FileHandle$FileHandleSink;

    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$FileHandleSink;-><init>(Lokio/FileHandle;J)V

    check-cast v0, Lokio/Sink;

    return-object v0

    .line 444
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-FileHandle$sink$2":I
    :cond_0
    const/4 v2, 0x0

    .line 220
    .local v2, "$i$a$-check-FileHandle$sink$2$1":I
    :try_start_1
    const-string v3, "closed"

    .end local v2    # "$i$a$-check-FileHandle$sink$2$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$f$synchronized":I
    .end local p0    # "this":Lokio/FileHandle;
    .end local p1    # "fileOffset":J
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .end local v1    # "$i$a$-synchronized-FileHandle$sink$2":I
    .restart local v0    # "$i$f$synchronized":I
    .restart local p0    # "this":Lokio/FileHandle;
    .restart local p1    # "fileOffset":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 444
    .end local v0    # "$i$f$synchronized":I
    :cond_1
    const/4 v0, 0x0

    .line 218
    .local v0, "$i$a$-check-FileHandle$sink$1":I
    const-string v0, "file handle is read-only"

    .end local v0    # "$i$a$-check-FileHandle$sink$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final size()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    .line 446
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 91
    .local v1, "$i$a$-synchronized-FileHandle$size$1":I
    :try_start_0
    iget-boolean v2, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 92
    nop

    .end local v1    # "$i$a$-synchronized-FileHandle$size$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 446
    nop

    .line 93
    .end local v0    # "$i$f$synchronized":I
    invoke-virtual {p0}, Lokio/FileHandle;->protectedSize()J

    move-result-wide v0

    return-wide v0

    .line 444
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-FileHandle$size$1":I
    :cond_0
    const/4 v2, 0x0

    .line 91
    .local v2, "$i$a$-check-FileHandle$size$1$1":I
    :try_start_1
    const-string v3, "closed"

    .end local v2    # "$i$a$-check-FileHandle$size$1$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$f$synchronized":I
    .end local p0    # "this":Lokio/FileHandle;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v1    # "$i$a$-synchronized-FileHandle$size$1":I
    .restart local v0    # "$i$f$synchronized":I
    .restart local p0    # "this":Lokio/FileHandle;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final source(J)Lokio/Source;
    .locals 4
    .param p1, "fileOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    .line 451
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 150
    .local v1, "$i$a$-synchronized-FileHandle$source$1":I
    :try_start_0
    iget-boolean v2, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 151
    iget v2, p0, Lokio/FileHandle;->openStreamCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-synchronized-FileHandle$source$1":I
    monitor-exit p0

    .line 451
    nop

    .line 153
    .end local v0    # "$i$f$synchronized":I
    new-instance v0, Lokio/FileHandle$FileHandleSource;

    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$FileHandleSource;-><init>(Lokio/FileHandle;J)V

    check-cast v0, Lokio/Source;

    return-object v0

    .line 444
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-FileHandle$source$1":I
    :cond_0
    const/4 v2, 0x0

    .line 150
    .local v2, "$i$a$-check-FileHandle$source$1$1":I
    :try_start_1
    const-string v3, "closed"

    .end local v2    # "$i$a$-check-FileHandle$source$1$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$f$synchronized":I
    .end local p0    # "this":Lokio/FileHandle;
    .end local p1    # "fileOffset":J
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .end local v1    # "$i$a$-synchronized-FileHandle$source$1":I
    .restart local v0    # "$i$f$synchronized":I
    .restart local p0    # "this":Lokio/FileHandle;
    .restart local p1    # "fileOffset":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final write(JLokio/Buffer;J)V
    .locals 4
    .param p1, "fileOffset"    # J
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x0

    .line 449
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 128
    .local v1, "$i$a$-synchronized-FileHandle$write$4":I
    :try_start_0
    iget-boolean v2, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 129
    nop

    .end local v1    # "$i$a$-synchronized-FileHandle$write$4":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 449
    nop

    .line 130
    .end local v0    # "$i$f$synchronized":I
    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->writeNoCloseCheck(JLokio/Buffer;J)V

    .line 131
    return-void

    .line 444
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-FileHandle$write$4":I
    :cond_0
    const/4 v2, 0x0

    .line 128
    .local v2, "$i$a$-check-FileHandle$write$4$1":I
    :try_start_1
    const-string v3, "closed"

    .end local v2    # "$i$a$-check-FileHandle$write$4$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$f$synchronized":I
    .end local p0    # "this":Lokio/FileHandle;
    .end local p1    # "fileOffset":J
    .end local p3    # "source":Lokio/Buffer;
    .end local p4    # "byteCount":J
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v1    # "$i$a$-synchronized-FileHandle$write$4":I
    .restart local v0    # "$i$f$synchronized":I
    .restart local p0    # "this":Lokio/FileHandle;
    .restart local p1    # "fileOffset":J
    .restart local p3    # "source":Lokio/Buffer;
    .restart local p4    # "byteCount":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 444
    .end local v0    # "$i$f$synchronized":I
    :cond_1
    const/4 v0, 0x0

    .line 126
    .local v0, "$i$a$-check-FileHandle$write$3":I
    const-string v0, "file handle is read-only"

    .end local v0    # "$i$a$-check-FileHandle$write$3":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final write(J[BII)V
    .locals 4
    .param p1, "fileOffset"    # J
    .param p3, "array"    # [B
    .param p4, "arrayOffset"    # I
    .param p5, "byteCount"    # I

    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lokio/FileHandle;->readWrite:Z

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 448
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 118
    .local v1, "$i$a$-synchronized-FileHandle$write$2":I
    :try_start_0
    iget-boolean v2, p0, Lokio/FileHandle;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 119
    nop

    .end local v1    # "$i$a$-synchronized-FileHandle$write$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 448
    nop

    .line 120
    .end local v0    # "$i$f$synchronized":I
    invoke-virtual/range {p0 .. p5}, Lokio/FileHandle;->protectedWrite(J[BII)V

    return-void

    .line 444
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-FileHandle$write$2":I
    :cond_0
    const/4 v2, 0x0

    .line 118
    .local v2, "$i$a$-check-FileHandle$write$2$1":I
    :try_start_1
    const-string v3, "closed"

    .end local v2    # "$i$a$-check-FileHandle$write$2$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$f$synchronized":I
    .end local p0    # "this":Lokio/FileHandle;
    .end local p1    # "fileOffset":J
    .end local p3    # "array":[B
    .end local p4    # "arrayOffset":I
    .end local p5    # "byteCount":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v1    # "$i$a$-synchronized-FileHandle$write$2":I
    .restart local v0    # "$i$f$synchronized":I
    .restart local p0    # "this":Lokio/FileHandle;
    .restart local p1    # "fileOffset":J
    .restart local p3    # "array":[B
    .restart local p4    # "arrayOffset":I
    .restart local p5    # "byteCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 444
    .end local v0    # "$i$f$synchronized":I
    :cond_1
    const/4 v0, 0x0

    .line 116
    .local v0, "$i$a$-check-FileHandle$write$1":I
    const-string v0, "file handle is read-only"

    .end local v0    # "$i$a$-check-FileHandle$write$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
