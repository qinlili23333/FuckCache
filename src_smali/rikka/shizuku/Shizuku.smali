.class public Lrikka/shizuku/Shizuku;
.super Ljava/lang/Object;
.source "Shizuku.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/shizuku/Shizuku$UserServiceArgs;,
        Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;,
        Lrikka/shizuku/Shizuku$OnBinderDeadListener;,
        Lrikka/shizuku/Shizuku$OnBinderReceivedListener;
    }
.end annotation


# static fields
.field private static final DEAD_LISTENERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrikka/shizuku/Shizuku$OnBinderDeadListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEATH_RECIPIENT:Landroid/os/IBinder$DeathRecipient;

.field private static final MAIN_HANDLER:Landroid/os/Handler;

.field private static final PERMISSION_LISTENERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECEIVED_LISTENERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrikka/shizuku/Shizuku$OnBinderReceivedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHIZUKU_APPLICATION:Lmoe/shizuku/server/IShizukuApplication;

.field private static binder:Landroid/os/IBinder;

.field private static permissionGranted:Z

.field private static preV11:Z

.field private static serverApiVersion:I

.field private static serverContext:Ljava/lang/String;

.field private static serverPatchVersion:I

.field private static serverUid:I

.field private static service:Lmoe/shizuku/server/IShizukuService;

.field private static shouldShowRequestPermissionRationale:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, -0x1

    sput v0, Lrikka/shizuku/Shizuku;->serverUid:I

    sput v0, Lrikka/shizuku/Shizuku;->serverApiVersion:I

    sput v0, Lrikka/shizuku/Shizuku;->serverPatchVersion:I

    const/4 v0, 0x0

    sput-object v0, Lrikka/shizuku/Shizuku;->serverContext:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lrikka/shizuku/Shizuku;->permissionGranted:Z

    sput-boolean v0, Lrikka/shizuku/Shizuku;->shouldShowRequestPermissionRationale:Z

    sput-boolean v0, Lrikka/shizuku/Shizuku;->preV11:Z

    new-instance v0, Lrikka/shizuku/Shizuku$1;

    invoke-direct {v0}, Lrikka/shizuku/Shizuku$1;-><init>()V

    sput-object v0, Lrikka/shizuku/Shizuku;->SHIZUKU_APPLICATION:Lmoe/shizuku/server/IShizukuApplication;

    sget-object v0, Lrikka/shizuku/-$$Lambda$Shizuku$6MxFi86n6dr3F1Td4am0IVU0YFE;->INSTANCE:Lrikka/shizuku/-$$Lambda$Shizuku$6MxFi86n6dr3F1Td4am0IVU0YFE;

    sput-object v0, Lrikka/shizuku/Shizuku;->DEATH_RECIPIENT:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lrikka/shizuku/Shizuku;->RECEIVED_LISTENERS:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lrikka/shizuku/Shizuku;->DEAD_LISTENERS:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lrikka/shizuku/Shizuku;->PERMISSION_LISTENERS:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lrikka/shizuku/Shizuku;->MAIN_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .registers 1

    sput p0, Lrikka/shizuku/Shizuku;->serverUid:I

    return p0
.end method

.method static synthetic access$102(I)I
    .registers 1

    sput p0, Lrikka/shizuku/Shizuku;->serverApiVersion:I

    return p0
.end method

.method static synthetic access$202(I)I
    .registers 1

    sput p0, Lrikka/shizuku/Shizuku;->serverPatchVersion:I

    return p0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lrikka/shizuku/Shizuku;->serverContext:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    sput-boolean p0, Lrikka/shizuku/Shizuku;->permissionGranted:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    sput-boolean p0, Lrikka/shizuku/Shizuku;->shouldShowRequestPermissionRationale:Z

    return p0
.end method

.method public static addBinderDeadListener(Lrikka/shizuku/Shizuku$OnBinderDeadListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, Lrikka/shizuku/Shizuku;->DEAD_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lrikka/shizuku/Shizuku;->addBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;Z)V

    return-void
.end method

.method private static addBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "sticky"
        }
    .end annotation

    if-eqz p1, :cond_23

    invoke-static {}, Lrikka/shizuku/Shizuku;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_16

    invoke-interface {p0}, Lrikka/shizuku/Shizuku$OnBinderReceivedListener;->onBinderReceived()V

    goto :goto_23

    :cond_16
    sget-object v0, Lrikka/shizuku/Shizuku;->MAIN_HANDLER:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lrikka/shizuku/-$$Lambda$j6cj1ogZGBcKE5Xd_OODpL8oALg;

    invoke-direct {v1, p0}, Lrikka/shizuku/-$$Lambda$j6cj1ogZGBcKE5Xd_OODpL8oALg;-><init>(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    :goto_23
    sget-object v0, Lrikka/shizuku/Shizuku;->RECEIVED_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addBinderReceivedListenerSticky(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lrikka/shizuku/Shizuku;->addBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;Z)V

    return-void
.end method

.method public static addRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, Lrikka/shizuku/Shizuku;->PERMISSION_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static attachUserService(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "binder",
            "options"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmoe/shizuku/server/IShizukuService;->attachUserService(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static bindUserService(Lrikka/shizuku/Shizuku$UserServiceArgs;Landroid/content/ServiceConnection;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "conn"
        }
    .end annotation

    invoke-static {p0}, Lrikka/shizuku/ShizukuServiceConnection;->getOrCreate(Lrikka/shizuku/Shizuku$UserServiceArgs;)Lrikka/shizuku/ShizukuServiceConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrikka/shizuku/ShizukuServiceConnection;->addConnection(Landroid/content/ServiceConnection;)V

    :try_start_7
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v1

    invoke-static {p0}, Lrikka/shizuku/Shizuku$UserServiceArgs;->access$600(Lrikka/shizuku/Shizuku$UserServiceArgs;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lmoe/shizuku/server/IShizukuService;->addUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v1

    invoke-static {v1}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static checkRemotePermission(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    sget v0, Lrikka/shizuku/Shizuku;->serverUid:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    :try_start_6
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p0}, Lmoe/shizuku/server/IShizukuService;->checkPermission(Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static checkSelfPermission()I
    .registers 2

    sget-boolean v0, Lrikka/shizuku/Shizuku;->permissionGranted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->checkSelfPermission()Z

    move-result v0

    sput-boolean v0, Lrikka/shizuku/Shizuku;->permissionGranted:Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_16

    nop

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, -0x1

    :goto_15
    return v1

    :catch_16
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static dispatchBinderDeadListeners()V
    .registers 2

    sget-object v0, Lrikka/shizuku/Shizuku;->DEAD_LISTENERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrikka/shizuku/Shizuku$OnBinderDeadListener;

    invoke-interface {v1}, Lrikka/shizuku/Shizuku$OnBinderDeadListener;->onBinderDead()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private static dispatchBinderReceivedListeners()V
    .registers 2

    sget-object v0, Lrikka/shizuku/Shizuku;->RECEIVED_LISTENERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrikka/shizuku/Shizuku$OnBinderReceivedListener;

    invoke-interface {v1}, Lrikka/shizuku/Shizuku$OnBinderReceivedListener;->onBinderReceived()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static dispatchPermissionConfirmationResult(IIILandroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestUid",
            "requestPid",
            "requestCode",
            "data"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lmoe/shizuku/server/IShizukuService;->dispatchPermissionConfirmationResult(IIILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static dispatchRequestPermissionResultListener(II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "result"
        }
    .end annotation

    sget-object v0, Lrikka/shizuku/Shizuku;->PERMISSION_LISTENERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;

    invoke-interface {v1, p0, p1}, Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;->onRequestPermissionResult(II)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static exit()V
    .registers 2

    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->exit()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getBinder()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public static getFlagsForUid(II)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "mask"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmoe/shizuku/server/IShizukuService;->getFlagsForUid(II)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getLatestServiceVersion()I
    .registers 1

    const/16 v0, 0xb

    return v0
.end method

.method public static getSELinuxContext()Ljava/lang/String;
    .registers 2

    sget-object v0, Lrikka/shizuku/Shizuku;->serverContext:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->getSELinuxContext()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrikka/shizuku/Shizuku;->serverContext:Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    nop

    return-object v0

    :catch_11
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getServerPatchVersion()I
    .registers 1

    sget v0, Lrikka/shizuku/Shizuku;->serverPatchVersion:I

    return v0
.end method

.method public static getUid()I
    .registers 2

    sget v0, Lrikka/shizuku/Shizuku;->serverUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    :try_start_6
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->getUid()I

    move-result v0

    sput v0, Lrikka/shizuku/Shizuku;->serverUid:I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    nop

    return v0

    :catch_12
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getVersion()I
    .registers 2

    sget v0, Lrikka/shizuku/Shizuku;->serverApiVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    :try_start_6
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->getVersion()I

    move-result v0

    sput v0, Lrikka/shizuku/Shizuku;->serverApiVersion:I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_12

    nop

    return v0

    :catch_12
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static isPreV11()Z
    .registers 1

    sget-boolean v0, Lrikka/shizuku/Shizuku;->preV11:Z

    return v0
.end method

.method public static synthetic lambda$ggkQruX8uDONd-PYVo1tsdVQrL8()V
    .registers 0

    invoke-static {}, Lrikka/shizuku/Shizuku;->dispatchBinderReceivedListeners()V

    return-void
.end method

.method static synthetic lambda$scheduleRequestPermissionResultListener$1(II)V
    .registers 2

    invoke-static {p0, p1}, Lrikka/shizuku/Shizuku;->dispatchRequestPermissionResultListener(II)V

    return-void
.end method

.method static synthetic lambda$static$0()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lrikka/shizuku/Shizuku;->onBinderReceived(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$wTbLbCLzWJjVDjyMyGRtHXFqqaw()V
    .registers 0

    invoke-static {}, Lrikka/shizuku/Shizuku;->dispatchBinderDeadListeners()V

    return-void
.end method

.method public static newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lrikka/shizuku/ShizukuRemoteProcess;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cmd",
            "env",
            "dir"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    new-instance v0, Lrikka/shizuku/ShizukuRemoteProcess;

    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lmoe/shizuku/server/IShizukuService;->newProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lmoe/shizuku/server/IRemoteProcess;

    move-result-object v1

    invoke-direct {v0, v1}, Lrikka/shizuku/ShizukuRemoteProcess;-><init>(Lmoe/shizuku/server/IRemoteProcess;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static onBinderReceived(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newBinder",
            "packageName"
        }
    .end annotation

    const-string v0, "attachApplication"

    const-string v1, "ShizukuApplication"

    sget-object v2, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    if-ne v2, p0, :cond_9

    return-void

    :cond_9
    if-nez p0, :cond_1b

    const/4 v0, 0x0

    sput-object v0, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    sput-object v0, Lrikka/shizuku/Shizuku;->service:Lmoe/shizuku/server/IShizukuService;

    const/4 v1, -0x1

    sput v1, Lrikka/shizuku/Shizuku;->serverUid:I

    sput v1, Lrikka/shizuku/Shizuku;->serverApiVersion:I

    sput-object v0, Lrikka/shizuku/Shizuku;->serverContext:Ljava/lang/String;

    invoke-static {}, Lrikka/shizuku/Shizuku;->scheduleBinderDeadListeners()V

    goto :goto_80

    :cond_1b
    const/4 v3, 0x0

    if-eqz v2, :cond_23

    sget-object v4, Lrikka/shizuku/Shizuku;->DEATH_RECIPIENT:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_23
    sput-object p0, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    invoke-static {p0}, Lmoe/shizuku/server/IShizukuService$Stub;->asInterface(Landroid/os/IBinder;)Lmoe/shizuku/server/IShizukuService;

    move-result-object v2

    sput-object v2, Lrikka/shizuku/Shizuku;->service:Lmoe/shizuku/server/IShizukuService;

    :try_start_2b
    sget-object v2, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    sget-object v4, Lrikka/shizuku/Shizuku;->DEATH_RECIPIENT:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v2

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    :try_start_37
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_75

    :try_start_3f
    const-string v5, "moe.shizuku.server.IShizukuService"

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget-object v5, Lrikka/shizuku/Shizuku;->SHIZUKU_APPLICATION:Lmoe/shizuku/server/IShizukuApplication;

    invoke-interface {v5}, Lmoe/shizuku/server/IShizukuApplication;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v5, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    const/16 v6, 0xe

    invoke-interface {v5, v6, v2, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    if-nez v5, :cond_5b

    const/4 v3, 0x1

    :cond_5b
    sput-boolean v3, Lrikka/shizuku/Shizuku;->preV11:Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_60
    .catchall {:try_start_3f .. :try_end_60} :catchall_6c

    :try_start_60
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    nop

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_7d

    :catchall_6c
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    nop

    throw v0
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    invoke-static {}, Lrikka/shizuku/Shizuku;->scheduleBinderReceivedListeners()V

    :goto_80
    return-void
.end method

.method public static pingBinder()Z
    .registers 1

    sget-object v0, Lrikka/shizuku/Shizuku;->binder:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static removeBinderDeadListener(Lrikka/shizuku/Shizuku$OnBinderDeadListener;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, Lrikka/shizuku/Shizuku;->DEAD_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeBinderReceivedListener(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, Lrikka/shizuku/Shizuku;->RECEIVED_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, Lrikka/shizuku/Shizuku;->PERMISSION_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static requestPermission(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestCode"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p0}, Lmoe/shizuku/server/IShizukuService;->requestPermission(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected static requireService()Lmoe/shizuku/server/IShizukuService;
    .registers 2

    sget-object v0, Lrikka/shizuku/Shizuku;->service:Lmoe/shizuku/server/IShizukuService;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "binder haven\'t been received"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static scheduleBinderDeadListeners()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    invoke-static {}, Lrikka/shizuku/Shizuku;->dispatchBinderDeadListeners()V

    goto :goto_15

    :cond_e
    sget-object v0, Lrikka/shizuku/Shizuku;->MAIN_HANDLER:Landroid/os/Handler;

    sget-object v1, Lrikka/shizuku/-$$Lambda$Shizuku$wTbLbCLzWJjVDjyMyGRtHXFqqaw;->INSTANCE:Lrikka/shizuku/-$$Lambda$Shizuku$wTbLbCLzWJjVDjyMyGRtHXFqqaw;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_15
    return-void
.end method

.method private static scheduleBinderReceivedListeners()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    invoke-static {}, Lrikka/shizuku/Shizuku;->dispatchBinderReceivedListeners()V

    goto :goto_15

    :cond_e
    sget-object v0, Lrikka/shizuku/Shizuku;->MAIN_HANDLER:Landroid/os/Handler;

    sget-object v1, Lrikka/shizuku/-$$Lambda$Shizuku$ggkQruX8uDONd-PYVo1tsdVQrL8;->INSTANCE:Lrikka/shizuku/-$$Lambda$Shizuku$ggkQruX8uDONd-PYVo1tsdVQrL8;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_15
    return-void
.end method

.method static scheduleRequestPermissionResultListener(II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "result"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    invoke-static {p0, p1}, Lrikka/shizuku/Shizuku;->dispatchRequestPermissionResultListener(II)V

    goto :goto_18

    :cond_e
    sget-object v0, Lrikka/shizuku/Shizuku;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lrikka/shizuku/-$$Lambda$Shizuku$gf1R8UjsSFcF1pwu65co_wsHiEo;

    invoke-direct {v1, p0, p1}, Lrikka/shizuku/-$$Lambda$Shizuku$gf1R8UjsSFcF1pwu65co_wsHiEo;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_18
    return-void
.end method

.method public static shouldShowRequestPermissionRationale()Z
    .registers 2

    sget-boolean v0, Lrikka/shizuku/Shizuku;->permissionGranted:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-boolean v0, Lrikka/shizuku/Shizuku;->shouldShowRequestPermissionRationale:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    :try_start_c
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->shouldShowRequestPermissionRationale()Z

    move-result v0

    sput-boolean v0, Lrikka/shizuku/Shizuku;->shouldShowRequestPermissionRationale:Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_18

    nop

    return v0

    :catch_18
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static transactRemote(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "reply",
            "flags"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0}, Lmoe/shizuku/server/IShizukuService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static unbindUserService(Lrikka/shizuku/Shizuku$UserServiceArgs;Landroid/content/ServiceConnection;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "args",
            "conn",
            "remove"
        }
    .end annotation

    invoke-static {p0}, Lrikka/shizuku/ShizukuServiceConnection;->get(Lrikka/shizuku/Shizuku$UserServiceArgs;)Lrikka/shizuku/ShizukuServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lrikka/shizuku/ShizukuServiceConnection;->removeConnection(Landroid/content/ServiceConnection;)V

    :cond_9
    if-eqz p2, :cond_1e

    :try_start_b
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0}, Lrikka/shizuku/Shizuku$UserServiceArgs;->access$700(Lrikka/shizuku/Shizuku$UserServiceArgs;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lmoe/shizuku/server/IShizukuService;->removeUserService(Lmoe/shizuku/server/IShizukuServiceConnection;Landroid/os/Bundle;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception v1

    invoke-static {v1}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static updateFlagsForUid(III)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "mask",
            "value"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->requireService()Lmoe/shizuku/server/IShizukuService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lmoe/shizuku/server/IShizukuService;->updateFlagsForUid(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->rethrowAsRuntimeException(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
