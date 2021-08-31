.class public Lrikka/sui/Sui;
.super Ljava/lang/Object;
.source "Sui.java"


# static fields
.field private static final BRIDGE_ACTION_GET_BINDER:I = 0x2

.field private static final BRIDGE_SERVICE_DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field private static final BRIDGE_SERVICE_NAME:Ljava/lang/String; = "activity"

.field private static final BRIDGE_TRANSACTION_CODE:I = 0x5f535549

.field private static isSui:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    invoke-static {}, Lrikka/sui/Sui;->requestBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0, p0}, Lrikka/shizuku/Shizuku;->onBinderReceived(Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lrikka/sui/Sui;->isSui:Z

    return v1

    :cond_d
    const/4 v1, 0x0

    sput-boolean v1, Lrikka/sui/Sui;->isSui:Z

    return v1
.end method

.method public static isSui()Z
    .registers 1

    sget-boolean v0, Lrikka/sui/Sui;->isSui:Z

    return v0
.end method

.method private static requestBinder()Landroid/os/IBinder;
    .registers 6

    const-string v0, "activity"

    invoke-static {v0}, Lrikka/shizuku/SystemServiceHelper;->getSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_12
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const v4, 0x5f535549

    const/4 v5, 0x0

    invoke-interface {v0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_34

    if-eqz v4, :cond_33

    nop

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v4

    :cond_33
    goto :goto_38

    :catchall_34
    move-exception v4

    :try_start_35
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    :goto_38
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v1

    :catchall_40
    move-exception v1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
