.class public Lcom/android/server/backup/FullBackupJob;
.super Landroid/app/job/JobService;
.source "FullBackupJob.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final JOB_ID:I = 0x5038

.field private static final TAG:Ljava/lang/String; = "FullBackupJob"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field mParams:Landroid/app/job/JobParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-class v2, Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sput-object v0, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;J)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "minDelay"    # J

    .prologue
    return-void
.end method


# virtual methods
.method public finishBackupPass()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/FullBackupJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 53
    iput-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    .line 50
    :cond_0
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    .line 62
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    .line 63
    .local v0, "service":Lcom/android/server/backup/Trampoline;
    invoke-virtual {v0, p0}, Lcom/android/server/backup/Trampoline;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result v1

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_0

    .line 69
    iput-object v2, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    .line 70
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    .line 71
    .local v0, "service":Lcom/android/server/backup/Trampoline;
    invoke-virtual {v0}, Lcom/android/server/backup/Trampoline;->endFullBackup()V

    .line 73
    .end local v0    # "service":Lcom/android/server/backup/Trampoline;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
