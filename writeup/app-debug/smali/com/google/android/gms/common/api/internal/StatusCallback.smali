.class public Lcom/google/android/gms/common/api/internal/StatusCallback;
.super Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;
.source "com.google.android.gms:play-services-base@@18.1.0"


# instance fields
.field private final mResultHolder:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 0
    .param p1, "resultHolder"    # Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/api/internal/StatusCallback;
    .end local p1    # "resultHolder":Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/StatusCallback;->mResultHolder:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1, "result"    # Lcom/google/android/gms/common/api/Status;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/api/internal/StatusCallback;
    .end local p1    # "result":Lcom/google/android/gms/common/api/Status;
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/StatusCallback;->mResultHolder:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    return-void
.end method
