.class public Lrikka/shizuku/Shizuku$UserServiceArgs;
.super Ljava/lang/Object;
.source "Shizuku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/shizuku/Shizuku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserServiceArgs"
.end annotation


# instance fields
.field final componentName:Landroid/content/ComponentName;

.field debuggable:Z

.field processName:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field versionCode:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->versionCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->debuggable:Z

    iput-object p1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic access$600(Lrikka/shizuku/Shizuku$UserServiceArgs;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0}, Lrikka/shizuku/Shizuku$UserServiceArgs;->forAdd()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lrikka/shizuku/Shizuku$UserServiceArgs;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0}, Lrikka/shizuku/Shizuku$UserServiceArgs;->forRemove()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private forAdd()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->componentName:Landroid/content/ComponentName;

    const-string v2, "shizuku:user-service-arg-component"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-boolean v1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->debuggable:Z

    const-string v2, "shizuku:user-service-arg-debuggable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->versionCode:I

    const-string v2, "shizuku:user-service-arg-version-code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->processName:Ljava/lang/String;

    const-string v2, "process name suffix must not be null when using standalone process mode"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "shizuku:user-service-arg-process-name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    if-eqz v1, :cond_31

    const-string v2, "shizuku:user-service-arg-tag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-object v0
.end method

.method private forRemove()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->componentName:Landroid/content/ComponentName;

    const-string v2, "shizuku:user-service-arg-component"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    if-eqz v1, :cond_15

    const-string v2, "shizuku:user-service-arg-tag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-object v0
.end method


# virtual methods
.method public debuggable(Z)Lrikka/shizuku/Shizuku$UserServiceArgs;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debuggable"
        }
    .end annotation

    iput-boolean p1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->debuggable:Z

    return-object p0
.end method

.method public processNameSuffix(Ljava/lang/String;)Lrikka/shizuku/Shizuku$UserServiceArgs;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processNameSuffix"
        }
    .end annotation

    iput-object p1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lrikka/shizuku/Shizuku$UserServiceArgs;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    iput-object p1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public version(I)Lrikka/shizuku/Shizuku$UserServiceArgs;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionCode"
        }
    .end annotation

    iput p1, p0, Lrikka/shizuku/Shizuku$UserServiceArgs;->versionCode:I

    return-object p0
.end method
