.class public Lhidden/HiddenApiBridge;
.super Ljava/lang/Object;
.source "HiddenApiBridge.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ActivityManager_RunningAppProcessInfo_procStateToImportance(I)I
    .registers 2

    invoke-static {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v0

    return v0
.end method

.method public static Conscrypt_exportKeyingMaterial(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;[BI)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/android/org/conscrypt/Conscrypt;->exportKeyingMaterial(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static Context_createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static IPackageManager_Stub_asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static IPackageManager_checkPermission(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static IPackageManager_getInstalledPackages(Ljava/lang/Object;II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static IPackageManager_grantRuntimePermission(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static IPackageManager_revokeRuntimePermission(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static IPermissionManager_Stub_asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v0

    return-object v0
.end method

.method public static IPermissionManager_checkPermission(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/permission/IPermissionManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static IPermissionManager_grantRuntimePermission(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static IPermissionManager_revokeRuntimePermission(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    move-object v1, p0

    check-cast v1, Landroid/permission/IPermissionManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method public static IUserManager_Stub_asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    return-object v0
.end method

.method public static IUserManager_getUsers(Ljava/lang/Object;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lhidden/UserInfoCompat;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    move-object v1, p0

    check-cast v1, Landroid/os/IUserManager;

    invoke-interface {v1, v0, v0, v0}, Landroid/os/IUserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception v1

    move-object v2, p0

    check-cast v2, Landroid/os/IUserManager;

    invoke-interface {v2, v0}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    :goto_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    new-instance v4, Lhidden/UserInfoCompat;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v6, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lhidden/UserInfoCompat;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_33
    return-object v1
.end method

.method public static OpEntry_getMode(Ljava/lang/Object;)I
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v1

    return v1
.end method

.method public static PackageInfo_overlayTarget(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    return-object v0
.end method

.method public static PackageOps_getOps(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static SystemProperties_getInt(Ljava/lang/String;I)I
    .registers 3

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static UserHandle_getIdentifier(Landroid/os/UserHandle;)I
    .registers 2

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public static createUserHandle(I)Landroid/os/UserHandle;
    .registers 2

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public static getActivityManager_PROCESS_STATE_UNKNOWN()I
    .registers 1

    sget v0, Landroid/app/ActivityManager;->PROCESS_STATE_UNKNOWN:I

    return v0
.end method

.method public static getActivityManager_UID_OBSERVER_ACTIVE()I
    .registers 1

    sget v0, Landroid/app/ActivityManager;->UID_OBSERVER_ACTIVE:I

    return v0
.end method

.method public static getOpsForPackage(Lcom/android/internal/app/IAppOpsService;ILjava/lang/String;[I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/IAppOpsService;",
            "I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemContext()Landroid/content/Context;
    .registers 1

    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getUidOps(Lcom/android/internal/app/IAppOpsService;I[I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/IAppOpsService;",
            "I[I)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
