.class public final synthetic Lrikka/shizuku/-$$Lambda$ShizukuServiceConnection$dRLE4iCN8dUYTq07ZEObwe-agvM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lrikka/shizuku/ShizukuServiceConnection;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lrikka/shizuku/ShizukuServiceConnection;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/shizuku/-$$Lambda$ShizukuServiceConnection$dRLE4iCN8dUYTq07ZEObwe-agvM;->f$0:Lrikka/shizuku/ShizukuServiceConnection;

    iput-object p2, p0, Lrikka/shizuku/-$$Lambda$ShizukuServiceConnection$dRLE4iCN8dUYTq07ZEObwe-agvM;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lrikka/shizuku/-$$Lambda$ShizukuServiceConnection$dRLE4iCN8dUYTq07ZEObwe-agvM;->f$0:Lrikka/shizuku/ShizukuServiceConnection;

    iget-object v1, p0, Lrikka/shizuku/-$$Lambda$ShizukuServiceConnection$dRLE4iCN8dUYTq07ZEObwe-agvM;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lrikka/shizuku/ShizukuServiceConnection;->lambda$connected$0$ShizukuServiceConnection(Landroid/os/IBinder;)V

    return-void
.end method
