.class Landroid/widget/Toast$TN$2;
.super Ljava/lang/Object;
.source "Toast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Toast$TN;


# direct methods
.method constructor <init>(Landroid/widget/Toast$TN;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Toast$TN;

    .prologue
    .line 337
    iput-object p1, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 342
    iget-object v0, p0, Landroid/widget/Toast$TN$2;->this$1:Landroid/widget/Toast$TN;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 339
    return-void
.end method