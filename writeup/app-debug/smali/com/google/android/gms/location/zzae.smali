.class public final Lcom/google/android/gms/location/zzae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.0.1"


# direct methods
.method public static zza(I)I
    .locals 4

    .line 1
    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x68

    if-eq p0, v0, :cond_1

    const/16 v0, 0x69

    if-ne p0, v0, :cond_0

    move p0, v0

    move v0, v2

    goto :goto_0

    .line 2
    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2
    const-string v1, "priority %d must be a Priority.PRIORITY_* constant"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public static zzb(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_1
    const-string p0, "PASSIVE"

    return-object p0

    :pswitch_2
    const-string p0, "LOW_POWER"

    return-object p0

    :pswitch_3
    const-string p0, "BALANCED_POWER_ACCURACY"

    return-object p0

    :pswitch_4
    const-string p0, "HIGH_ACCURACY"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
