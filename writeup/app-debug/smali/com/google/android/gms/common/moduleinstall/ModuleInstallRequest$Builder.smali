.class public Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zaa:Ljava/util/List;

.field private zab:Z

.field private zac:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

.field private zad:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->zaa:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->zab:Z

    return-void
.end method


# virtual methods
.method public addApi(Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;
    .locals 1
    .param p1, "api"    # Lcom/google/android/gms/common/api/OptionalModuleApi;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;
    .end local p1    # "api":Lcom/google/android/gms/common/api/OptionalModuleApi;
    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->zaa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;

    .end local p0    # "this":Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;
    iget-object v1, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->zaa:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->zac:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    iget-object v3, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->zad:Ljava/util/concurrent/Executor;

    iget-boolean v4, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->zab:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;-><init>(Ljava/util/List;Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;Ljava/util/concurrent/Executor;ZLcom/google/android/gms/common/moduleinstall/zac;)V

    return-object v6
.end method

.method public setListener(Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;
    .end local p1    # "listener":Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->setListener(Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setListener(Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->zac:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->zad:Ljava/util/concurrent/Executor;

    return-object p0
.end method
