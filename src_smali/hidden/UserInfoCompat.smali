.class public Lhidden/UserInfoCompat;
.super Ljava/lang/Object;
.source "UserInfoCompat.java"


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lhidden/UserInfoCompat;->id:I

    iput-object p2, p0, Lhidden/UserInfoCompat;->name:Ljava/lang/String;

    return-void
.end method
