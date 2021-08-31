.class Lqinlili/Splash$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lqinlili/Splash;


# direct methods
.method constructor <init>(Lqinlili/Splash;)V
    .registers 2

    iput-object p1, p0, Lqinlili/Splash$2;->a:Lqinlili/Splash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "cmd"

    aput-object v1, v0, v2

    const/4 v2, 0x1

    const-string v1, "package"

    aput-object v1, v0, v2

    const/4 v2, 0x2

    const-string v1, "trim-caches"

    aput-object v1, v0, v2

    const/4 v2, 0x3

    const-string v1, "2048G"

    aput-object v1, v0, v2

    invoke-static {v0}, Lrikka/shizuku/cmd/ShizukuCmd;->main([Ljava/lang/String;)V

    iget-object v0, p0, Lqinlili/Splash$2;->a:Lqinlili/Splash;

    return-void
.end method
